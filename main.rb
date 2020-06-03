require 'ostruct'
require 'json'

$defaultshortcuts = JSON.parse(File.read('default-shortcuts.json'))

#Combine default shortcuts and app functions into one hash
def injectfunctions(shortcuthash,functionhash)
  combinedhash = {}
  functionhash.each do |k,v|
    combinedhash[k] = functionhash[k].merge(shortcuthash[k])
  end
  return combinedhash
end

#Create object that contains all shortcuts and functions
def createappobject(appname)
  app = OpenStruct.new
  app.name = appname
  appsettings = JSON.parse(File.read("apps/#{appname}.json"))
  appsettings["appvariables"].each { |k,v| app.public_send("#{k}=", v) }
  injectfunctions($defaultshortcuts["tabshash"],appsettings["tabshash"]).each { |k,v| app.public_send("#{k}=", v) }
  injectfunctions($defaultshortcuts["fileshash"],appsettings["fileshash"]).each { |k,v| app.public_send("#{k}=", v) }
  injectfunctions($defaultshortcuts["viewshash"],appsettings["viewshash"]).each { |k,v| app.public_send("#{k}=", v) }
  construct_dotfile_entry(app)
end

#Put together all necessary dotfile commands for this app
def construct_dotfile_entry(app)
  dotlines = "\n#{app.commentmarker*5} Universal Shortcuts start here - do not edit this line/block\n"
  dotlines += "#{app.commentmarker*5} Be aware any changes you manually add in this block will be over-written next time you run universal-shortcuts. \n"
  dotlines += "#{app.commentmarker*5} If you want to edit the below, you should do so through universal-shortcuts\n"
  app.marshal_dump.each do |attribute,value|
    unless (attribute.to_s == "unmapcommand") || (attribute.to_s == "mapcommand") || (attribute.to_s == "dotfilelocation") || (attribute.to_s == "defaultmodifier") || (attribute.to_s == "commentmarker")
      if (command = value["defaultkey"]) &&
         (command.length > 0) &&
         (function = value["function"]) &&
         (function.length > 0)
        shortcut = app.defaultmodifier.gsub("<?>",command)
        line = app.mapcommand.gsub("<?>",shortcut)
        line = line.gsub("<!>", function)
        dotlines += "#{line} \n"
      end
    end
  end
  dotlines += "#{app.commentmarker*5} Universal Shortcuts end here - do not edit this line/block\n\n"
  return dotlines
end

#Print dotfile entry or write directly to dotfile
def output_dotfile_entry
  puts "Would you like to (p)rint the output or (w)rite directly to the dotfile/s?"
  answer = gets.chomp
  case(answer)
  when "p"
    puts dotlines
  when "w"
    #Qutebrowser requires direct user configuations via file config.py. Create file if it doesn't exist and load existing user settings.
    if File.file?("#{ENV['HOME']}/.config/qutebrowser/config.py") == false
      configfile = File.new("#{ENV['HOME']}/.config/qutebrowser/config.py")
      configfile.puts("config.load_autoconfig()\n\n")
      configfile.close
    end
    f = File.open(File.expand_path(app.dotfilelocation), 'a')
    f.write(dotlines)
    f.close
  end
end


#createappobject("vim")
#createappobject("kitty")
#createappobject("emacs")
#createappobject("ranger")
#createappobject("qutebrowser")

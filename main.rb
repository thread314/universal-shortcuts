require 'ostruct'
require 'json'

$defaultshortcuts = JSON.parse(File.read('default-shortcuts.json'))

def write_shortcuts(app)
  dotlines = "\n#{app.commentmarker*5} Universal Shortcuts start here\n"
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
  puts dotlines += "#{app.commentmarker*5} Universal Shortcuts end here\n\n"
  #    f = File.open(File.expand_path(app.dotfilelocation), 'a')
  #    f.write(dotlines)
  #    f.close
end

def injectfunctions(shortcuthash,functionhash)
  combinedhash = {}
  functionhash.each do |k,v|
    combinedhash[k] = functionhash[k].merge(shortcuthash[k])
  end
  return combinedhash
end


def createappobject(appname)
  app = OpenStruct.new
  appsettings = JSON.parse(File.read("apps/#{appname}.json"))
  appsettings["appvariables"].each { |k,v| app.public_send("#{k}=", v) }
  injectfunctions($defaultshortcuts["tabshash"],appsettings["tabshash"]).each { |k,v| app.public_send("#{k}=", v) }
  injectfunctions($defaultshortcuts["fileshash"],appsettings["fileshash"]).each { |k,v| app.public_send("#{k}=", v) }
  injectfunctions($defaultshortcuts["viewshash"],appsettings["viewshash"]).each { |k,v| app.public_send("#{k}=", v) }
  write_shortcuts(app)
end

createappobject("vim")
createappobject("kitty")
createappobject("emacs")
createappobject("ranger")
createappobject("qutebrowser")

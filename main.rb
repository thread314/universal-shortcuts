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

puts Dir.pwd
load "apps/vim.rb"
#load "kitty.rb"
#load "emacs.rb"
#load "qutebrowser.rb"
#load "ranger.rb"

#masterhash = {"vimvariableshash" => vimvariableshash, "vimfileshash" => vimfileshash, "vimviewshash" => vimviewshash, "vimtabshash" => vimtabshash}
#puts JSON.pretty_generate(masterhash)

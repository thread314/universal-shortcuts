require 'ostruct'

#Default shortcuts
$tabshash = {
  "opennewtab" => {:defaultkey => "o"},
  "selectprevioustab" => {:defaultkey => "j"},
  "selectnexttab" => {:defaultkey => "k"},
  "shifttableft" => {:defaultkey => ","},
  "shifttabright" => {:defaultkey => "."},
  "closecurrenttab" => {:defaultkey => "x"},
  "selectfirsttab" => {:defaultkey => "0"},
  "selectlasttab" => {:defaultkey => "$"},
  "buffernext" => {:defaultkey => "l"},
  "bufferprevious" => {:defaultkey => "h"},
  "bufferclose" => {:defaultkey => "w"}
}

$viewshash = {
  "stepforward" => {:defaultkey => "e"},
  "stepback" => {:defaultkey => "y"},
  "jumpforward" => {:defaultkey => "f"},
  "jumpback" => {:defaultkey => "b"},
  "find" => {:defaultkey => "/"},
  "gotostart" => {:defaultkey => "gg"},
  "gotoend" => {:defaultkey => "G"},
  "zoomin" => {:defaultkey => "="},
  "zoomout" => {:defaultkey => "-"},
  "resetzoom" => {:defaultkey => "0"},
}

$fileshash = {
  "openfile" => {:defaultkey => "o" },
  "newfile" => {:defaultkey => "" },
  "savefile" => {:defaultkey => "" },
  "saveandclose" => {:defaultkey => "" },
  "closenosave" => {:defaultkey => "" },
  "savefileas" => {:defaultkey => "" },
  "searchforfile" => {:defaultkey => "" },
  "savesession" => {:defaultkey => "" },
  "loadsession" => {:defaultkey => "" },
}



def write_shortcuts(app)
  dotlines = "\n#{app.commentmarker*5} Universal Shortcuts start here\n"
  app.marshal_dump.each do |attribute,value|
    unless (attribute.to_s == "unmapcommand") || (attribute.to_s == "mapcommand") || (attribute.to_s == "dotfilelocation") || (attribute.to_s == "defaultmodifier") || (attribute.to_s == "commentmarker")
      if (command = value[:defaultkey]) &&
          (command.length > 0) &&
          (function = value[:function]) &&
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


load "vim.rb"
#load "kitty.rb"
#load "emacs.rb"
#load "qutebrowser.rb"
#load "ranger.rb"

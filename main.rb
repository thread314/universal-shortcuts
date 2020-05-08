#Default shortcuts

module Tabs
  attr_accessor :opennewtab, :selectprevioustab, :selectnexttab, :shifttableft, :shifttabright, :closecurrenttab, :selectfirsttab, :selectlasttab, :bufferprevious, :buffernext, :bufferclose
  def initialize
    @opennewtab = {:defaultkey => "o"}
    @selectprevioustab = {:defaultkey => "j"}
    @selectnexttab = {:defaultkey => "k"}
    @shifttableft = {:defaultkey => ","}
    @shifttabright = {:defaultkey => "."}
    @closecurrenttab = {:defaultkey => "x"}
    @selectfirsttab = {:defaultkey => "0"}
    @selectlasttab = {:defaultkey => "$"}
    @buffernext = {:defaultkey => "l"}
    @bufferprevious = {:defaultkey => "h"}
    @bufferclose = {:defaultkey => "w"}
    super
  end
end

module View
  attr_accessor :stepforward, :stepback, :jumpforward, :jumpback, :find, :gotostart, :gotoend, :zoomin, :zoomout, :resetzoom
  def initialize
    @stepforward = {:defaultkey => "e"}
    @stepback = {:defaultkey => "y"}
    @jumpforward = {:defaultkey => "f"}
    @jumpback = {:defaultkey => "b"}
    @find = {:defaultkey => "/"}
    @gotostart = {:defaultkey => "gg"}
    @gotoend = {:defaultkey => "G"}
    @zoomin = {:defaultkey => "="}
    @zoomout = {:defaultkey => "-"}
    @resetzoom = {:defaultkey => "0"}
    super
  end
end

module Files
  attr_accessor :openfile, :newfile, :savefile, :saveandclose, :closenosave, :savefileas, :searchforfile, :savesession, :loadsession
  def initialize
    @openfile = {:defaultkey => "o" }
    @newfile = {:defaultkey => "" }
    @savefile = {:defaultkey => "" }
    @saveandclose = {:defaultkey => "" }
    @closenosave = {:defaultkey => "" }
    @savefileas = {:defaultkey => "" }
    @searchforfile = {:defaultkey => "" }
    @savesession = {:defaultkey => "" }
    @loadsession = {:defaultkey => "" }
    super
  end
end

#Assign shortcuts to an individual app
class App 
  include Tabs
  include View
  include Files
  attr_accessor :unmapcommand, :mapcommand, :dotfilelocation, :defaultmodifier, :commentmarker
  def write_shortcuts
    dotlines = "\n#{self.commentmarker*5} Universal Shortcuts start here\n"
    self.instance_variables.map do |attribute|
      unless (attribute.to_s == "@unmapcommand") || (attribute.to_s == "@mapcommand") || (attribute.to_s == "@dotfilelocation") || (attribute.to_s == "@defaultmodifier") || (attribute.to_s == "@commentmarker") 
        if (command = self.instance_variable_get(attribute)[:defaultkey]) &&
            (command.length > 0) && 
            (function = self.instance_variable_get(attribute)[:function]) &&
            (function.length > 0)
          command = self.instance_variable_get(attribute)[:defaultkey]
          shortcut = self.defaultmodifier.gsub("<?>",command) 
          line = self.mapcommand.gsub("<?>",shortcut)
          line = line.gsub("<!>", function)
          dotlines += "#{line} \n"
        end
      end
    end
    puts dotlines += "#{self.commentmarker*5} Universal Shortcuts end here\n\n"
    #    f = File.open(File.expand_path(self.dotfilelocation), 'a')
    #    f.write(dotlines)
    #    f.close
  end
end

load "vim.rb"
load "kitty.rb"

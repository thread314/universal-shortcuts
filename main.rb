#Default shortcuts
class Commands 
  attr_accessor :opennewtab, :selectprevioustab, :selectnexttab, :shifttableft, :shifttabright, :closecurrenttab
  def initialize
    @opennewtab = {:defaultkey => "t"}
    @selectprevioustab = {:defaultkey => "j"}
    @selectnexttab = {:defaultkey => "k"}
    @shifttableft = {:defaultkey => ","}
    @shifttabright = {:defaultkey => "."}
    @closecurrenttab = {:defaultkey => "w"}
  end
end

#Assign shortcuts to an individual app
class App < Commands
  attr_accessor :unmapcommand, :mapcommand, :dotfilelocation, :defaultmodifier
  def write_shortcuts
    self.instance_variables.map do |attribute|
      unless (attribute.to_s == "@unmapcommand") || (attribute.to_s == "@mapcommand") || (attribute.to_s == "@dotfilelocation") || (attribute.to_s == "@defaultmodifier")
        if function = self.instance_variable_get(attribute)[:function]
          command = self.instance_variable_get(attribute)[:defaultkey]
          shortcut = self.defaultmodifier.gsub("<?>",command) 
          line = self.mapcommand.gsub("<?>",shortcut)
          puts line = line.gsub("<!>", function)
        end
      end
    end
  end
end

load "vim.rb"

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
  attr_accessor :unmapcommand, :mapcommand, :dotfilelocation, :defaultmodifier, :commentmarker
  def write_shortcuts
    dotlines = "\n#{self.commentmarker*5} Universal Shortcuts start here\n"
    self.instance_variables.map do |attribute|
      unless (attribute.to_s == "@unmapcommand") || (attribute.to_s == "@mapcommand") || (attribute.to_s == "@dotfilelocation") || (attribute.to_s == "@defaultmodifier") || (attribute.to_s == "@commentmarker") 
        if function = self.instance_variable_get(attribute)[:function]
          command = self.instance_variable_get(attribute)[:defaultkey]
          shortcut = self.defaultmodifier.gsub("<?>",command) 
          line = self.mapcommand.gsub("<?>",shortcut)
          line = line.gsub("<!>", function)
          dotlines += "#{line} \n"
        end
      end
    end
    puts dotlines += "#{self.commentmarker*5} Universal Shortcuts end here\n\n"
    f = File.open(File.expand_path(self.dotfilelocation), 'a')
    f.write(dotlines)
    f.close
  end
end

load "vim.rb"

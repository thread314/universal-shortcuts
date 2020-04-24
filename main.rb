#Default shortcuts
class Commands 
  attr_accessor :opennewtab, :selectprevioustab 
  def initialize
    @opennewtab = {:defaultkey => "t"}
    @selectprevioustab = {:defaultkey => "j"}
#  :SelectNextTab => {:defaultkey => "k"},
#  :ShiftTabLeft => {:defaultkey => ","},
#  :ShiftTabRight => {:defaultkey => "."},
#  :CloseCurrentTab => {:defaultkey => "w"}
  end
end

class App < Commands
  attr_accessor :unmapcommand, :mapcommand, :dotfilelocation, :defaultmodifier
  def write_shortcuts
    self.instance_variables.map do |attribute|
      puts self.instance_variable_get(attribute)[:defaultkey]
      puts self.instance_variable_get(attribute)[:function]


#      p attribute
#      p self[attribute]
#      if function = key[:function]
#        command = self.key[:defaultkey]
#        shortcut = self.defaultmodifier.gsub("<?>",command) 
#        line = self.mapcommand.gsub("<?>",shortcut)
#        puts line = line.gsub("<!>", function)
#      end
    end
  end
end

load "vim.rb"

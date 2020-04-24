#Default shortcuts
$commands = {
  :OpenNewTab => {:defaultkey => "t"},
  :SelectPreviousTab => {:defaultkey => "j"},
  :SelectNextTab => {:defaultkey => "k"},
  :ShiftTabLeft => {:defaultkey => ","},
  :ShiftTabRight => {:defaultkey => "."},
  :CloseCurrentTab => {:defaultkey => "w"}
}

class App

  attr_accessor :unmapcommand, :mapcommand, :dotfilelocation, :defaultmodifier

  #initialize and set each default shortcut
  def initialize
    @attributes = $commands
    @attributes.each do |k,v|
      self.class.send :define_method, k do v end
    end
  end

  def write_shortcuts
    $commands.each do |i, j| 
      if function = self.OpenNewTab[:function]
        command = self.OpenNewTab[:defaultkey]
        shortcut = self.defaultmodifier.gsub("<?>",command) 
        line = self.mapcommand.gsub("<?>",shortcut)
        puts line = line.gsub("<!>", function)
      end
    end
  end

end

load "vim.rb"

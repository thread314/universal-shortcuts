#Default shortcuts
$commands = {
  :OpenNewTab => "t", 
  :SelectPreviousTab => "j", 
  :SelectNextTab => "k", 
  :ShiftTabLeft => ",", 
  :ShiftTabRight => ".", 
  :CloseCurrentTab => "w" 
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
    #    $commands.each do |i, j| 
    command = self.OpenNewTab
    shortcut = self.defaultmodifier.gsub("<?>",command) 
    puts line = self.mapcommand.gsub("<?>",shortcut)
    #    end
  end

end

load "vim.rb"

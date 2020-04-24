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
  def initialize
    @attributes = $commands
    @attributes.each do |k,v|
      self.class.send :define_method, k do v end
    end
  end
  def write_shortcuts
  end
end

vim = App.new
puts vim.CloseCurrentTab


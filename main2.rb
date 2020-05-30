
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


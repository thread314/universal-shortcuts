settings = {:"Commands" => 
            {:"Open New Tab" => "t", :"Select Previous Tab" => "j", :"Select Next Tab" => "k", :"Shift Tab Left" => ",", :"Shift Tab Right" => ".", :"Close Current Tab" => "w" }, 
            :"Vim" => 
            {:"DotFileLocation" => "~/.vimrc", :"DefaultModifier" => " ", :"CustomKeys" => [""]}
}

class App
  attr_accessor :unmapcommand, :mapcommand
  def write_shortcuts
  end
end

vim = App.new
vim.alpha = "post"
vim.unmapcommand = ""
vim.mapcommand = "map <?> <!>"

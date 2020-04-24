vim = App.new
vim.unmapcommand = ":unmap <?>"
vim.mapcommand = ":map <?> <!>"
vim.dotfilelocation = "~/.vimrc"
vim.defaultmodifier = "<leader><?>"
vim.OpenNewTab[:function] = ":tabnew<CR>"



vim.write_shortcuts




#  :OpenNewTab => {:defaultkey => "t"},
#  :SelectPreviousTab => {:defaultkey => "j"},
#  :SelectNextTab => {:defaultkey => "k"},
#  :ShiftTabLeft => {:defaultkey => ","},
#  :ShiftTabRight => {:defaultkey => "."},
#  :CloseCurrentTab => {:defaultkey => "w"}

vim = App.new
vim.unmapcommand = ":unmap <?>"
vim.mapcommand = ":map <?> <!>"
vim.dotfilelocation = "~/.vimrc"
vim.defaultmodifier = "<leader><?>"
vim.opennewtab[:function] = ":tabnew<CR>"
vim.selectprevioustab[:function] = ":tabprev<CR>" 
vim.selectnexttab[:function] = ":tabnext<CR>" 
vim.shifttableft[:function] = ":-tabmove<CR>" 
vim.shifttabright[:function] = ":+tabmove<CR>" 
vim.closecurrenttab[:function] = ":tabclose<CR>" 

vim.write_shortcuts


#  :OpenNewTab => {:defaultkey => "t"},
#  :SelectPreviousTab => {:defaultkey => "j"},
#  :SelectNextTab => {:defaultkey => "k"},
#  :ShiftTabLeft => {:defaultkey => ","},
#  :ShiftTabRight => {:defaultkey => "."},
#  :CloseCurrentTab => {:defaultkey => "w"}

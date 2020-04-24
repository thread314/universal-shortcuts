#Initialise instance of the app
vim = App.new

#Define app specific variables
vim.unmapcommand = ":unmap <?>"
vim.mapcommand = ":map <?> <!>"
vim.dotfilelocation = "~/.vimrc"
vim.defaultmodifier = "<leader><?>"
vim.commentmarker = "\""

#Assign the functions to each command
vim.opennewtab[:function] = ":tabnew<CR>"
vim.selectprevioustab[:function] = ":tabprev<CR>" 
vim.selectnexttab[:function] = ":tabnext<CR>" 
vim.shifttableft[:function] = ":-tabmove<CR>" 
vim.shifttabright[:function] = ":+tabmove<CR>" 
vim.closecurrenttab[:function] = ":tabclose<CR>" 

#Write the shortucts to the dotfile
vim.write_shortcuts

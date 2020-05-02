#Initialise instance of the app
kitty = App.new

#Define app specific variables
vim.unmapcommand = ":unmap <?>"
vim.mapcommand = ":map <?> <!>"
vim.dotfilelocation = "~/.vimrc"
vim.defaultmodifier = "<leader><?>"
vim.commentmarker = "\""

#Assign the functions to each command

#Tabs
vim.opennewtab[:function] = ":tabnew<CR>"
vim.selectprevioustab[:function] = ":tabprev<CR>" 
vim.selectnexttab[:function] = ":tabnext<CR>" 
vim.shifttableft[:function] = ":-tabmove<CR>" 
vim.shifttabright[:function] = ":+tabmove<CR>" 
vim.closecurrenttab[:function] = ":tabclose<CR>" 
vim.selectfirsttab[:function] = ":tabfirst<CR>" 
vim.selectlasttab[:function] = ":tablast<CR>" 

#Buffers
vim.buffernext[:function] = ":bnext<CR>"
vim.bufferprevious[:function] = ":bprevious<CR>"
vim.bufferclose[:function] = ":bd<CR>"

#Write the shortucts to the dotfile
vim.write_shortcuts

#Initialise instance of the app
vim = App.new

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
vim.buffernext[:function] = ":bnext<CR>"
vim.bufferprevious[:function] = ":bprevious<CR>"
vim.bufferclose[:function] = ":bd<CR>"

#View
vim.stepforward[:function] = "<C-E>" 
vim.stepback[:function] = "<C-Y>" 
vim.jumpforward[:function] = "<C-F>" 
vim.jumpback[:function] = "<C-B>" 
vim.find[:function] = "/" 
vim.gotostart[:function] = "gg" 
vim.gotoend[:function] = "G" 
vim.zoomin[:function] = "" 
vim.zoomout[:function] = "" 
vim.resetzoom[:function] = "" 

#Files
vim.openfile[:function] = ":o " 
vim.newfile[:function] = ":o " 
vim.savefile[:function] = ":w<CR> " 
vim.saveandclose[:function] = ":wq<CR>" 
vim.closenosave[:function] = ":q!<CR>" 
vim.savefileas[:function] = ":w " 
vim.searchforfile[:function] = "" 
vim.savesession[:function] = ":mks " 
vim.loadsession[:function] = ":source " 

#Write the shortucts to the dotfile
vim.write_shortcuts

#Initialise instance of the app
vim = OpenStruct.new

#Define app specific variables
vim.unmapcommand = ":unmap <?>"
vim.mapcommand = ":map <?> <!>"
vim.dotfilelocation = "~/.vimrc"
vim.defaultmodifier = "<leader><?>"
vim.commentmarker = "\""

#Assign the functions to each command

#Tabs
vimtabshash = {
"opennewtab" => {:function => ":tabnew<CR>"},
"selectprevioustab" => {:function => ":tabprev<CR>"},
"selectnexttab" => {:function => ":tabnext<CR>"},
"shifttableft" => {:function => ":-tabmove<CR>"},
"shifttabright" => {:function => ":+tabmove<CR>"},
"closecurrenttab" => {:function => ":tabclose<CR>"},
"selectfirsttab" => {:function => ":tabfirst<CR>"},
"selectlasttab" => {:function => ":tablast<CR>"},
"buffernext" => {:function => ":bnext<CR>"},
"bufferprevious" => {:function => ":bprevious<CR>"},
"bufferclose" => {:function => ":bd<CR>"}
}

#View
vimviewshash = {
"stepforward" => {:function => "<C-E>" },
"stepback" => {:function => "<C-Y>" },
"jumpforward" => {:function => "<C-F>" },
"jumpback" => {:function => "<C-B>" },
"find" => {:function => "/" },
"gotostart" => {:function => "gg" },
"gotoend" => {:function => "G" },
"zoomin" => {:function => "" },
"zoomout" => {:function => "" },
"resetzoom" => {:function => "" },
}

#Files
vimfileshash = {
"openfile" => {:function => ":o " },
"newfile" => {:function => ":o " },
"savefile" => {:function => ":w<CR> " },
"saveandclose" => {:function => ":wq<CR>" },
"closenosave" => {:function => ":q!<CR>" },
"savefileas" => {:function => ":w " },
"searchforfile" => {:function => "" },
"savesession" => {:function => ":mks " },
"loadsession" => {:function => ":source " },
}

#Write the shortucts to the dotfile
injectfunctions($tabshash,vimtabshash).each { |k,v| vim.public_send("#{k}=", v) }
puts injectfunctions($fileshash,vimfileshash)
injectfunctions($fileshash,vimfileshash).each { |k,v| vim.public_send("#{k}=", v) }
injectfunctions($viewshash,vimviewshash).each { |k,v| vim.public_send("#{k}=", v) }
write_shortcuts(vim)






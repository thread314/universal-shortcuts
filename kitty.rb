#Initialise instance of the app
kitty = App.new

#Define app specific variables
kitty.unmapcommand = ""
kitty.mapcommand = "map <?> <!>"
kitty.dotfilelocation = "~/.config/kitty/kitty.conf"
kitty.defaultmodifier = "ctrl+shift+<?>"
kitty.commentmarker = "#"

#Assign the functions to each command

#Tabs
kitty.opennewtab[:function] = "new_tab_with_cwd"
kitty.selectprevioustab[:function] = "previous_tab" 
kitty.selectnexttab[:function] = "next_tab" 
kitty.shifttableft[:function] = "move_tab_backward" 
kitty.shifttabright[:function] = "move_tab_forward" 
kitty.closecurrenttab[:function] = "close_tab" 
kitty.selectfirsttab[:function] = "goto_tab 1" 
kitty.selectlasttab[:function] = "goto_tab 99" 
kitty.buffernext[:function] = ""
kitty.bufferprevious[:function] = ""
kitty.bufferclose[:function] = ""

#View
kitty.stepforward[:function] = "scroll_line_down" 
kitty.stepback[:function] = "scroll_line_up" 
kitty.jumpforward[:function] = "scroll_page_down" 
kitty.jumpback[:function] = "scroll_page_up" 
kitty.find[:function] = "show_scrollback" 
kitty.gotostart[:function] = "scroll_home" 
kitty.gotoend[:function] = "scroll_end" 
kitty.zoomin[:function] = "change_font_size all +1.0" 
kitty.zoomout[:function] = "change_font_size all -1.0" 
kitty.resetzoom[:function] = "change_font_size all 0" 

#Files
kitty.openfile[:function] = "" 
kitty.newfile[:function] = "" 
kitty.savefile[:function] = "" 
kitty.saveandclose[:function] = "" 
kitty.closenosave[:function] = "" 
kitty.savefileas[:function] = "" 
kitty.searchforfile[:function] = "" 
kitty.savesession[:function] = "" 
kitty.loadsession[:function] = "" 


#Write the shortucts to the dotfile
kitty.write_shortcuts

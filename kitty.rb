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

#Buffers
#kitty.buffernext[:function] = ""
#kitty.bufferprevious[:function] = ""
#kitty.bufferclose[:function] = ""

#Write the shortucts to the dotfile
kitty.write_shortcuts

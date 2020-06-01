#Initialise instance of the app
ranger = App.new

#Define app specific variables
ranger.unmapcommand = ""
ranger.mapcommand = "map <?> <!>"
ranger.dotfilelocation = "~/.config/ranger/rc.conf"
ranger.defaultmodifier = "<?>"
ranger.commentmarker = "#"

#Assign the functions to each command

#Tabs
ranger.opennewtab[:function] = "tab_new"
ranger.selectprevioustab[:function] = "tab_move -1" 
ranger.selectnexttab[:function] = "tab_move +1" 
ranger.shifttableft[:function] = "tab_shift -1" 
ranger.shifttabright[:function] = "tab_shift +1" 
ranger.closecurrenttab[:function] = "quit" 
ranger.selectfirsttab[:function] = "tab_open 1" 
ranger.selectlasttab[:function] = "tab_open -1" 
ranger.buffernext[:function] = "history_go +1"
ranger.bufferprevious[:function] = "history_go -1"
ranger.bufferclose[:function] = ""

#View
ranger.stepforward[:function] = "scroll 1" 
ranger.stepback[:function] = "scroll -1" 
ranger.jumpforward[:function] = "move down=1 pages=True" 
ranger.jumpback[:function] = "move up=1 pages=True" 
ranger.find[:function] = "console search%space" 
ranger.gotostart[:function] = "move to=0" 
ranger.gotoend[:function] = "move to=-1" 
ranger.zoomin[:function] = "" 
ranger.zoomout[:function] = "" 
ranger.resetzoom[:function] = "" 

#Files
ranger.openfile[:function] = "open_with" 
ranger.newfile[:function] = "console touch%space" 
ranger.savefile[:function] = "" 
ranger.saveandclose[:function] = "q!" 
ranger.closenosave[:function] = "q!" 
ranger.savefileas[:function] = "" 
ranger.searchforfile[:function] = "" 
ranger.savesession[:function] = "" 
ranger.loadsession[:function] = "" 

#Write the shortucts to the dotfile
ranger.write_shortcuts

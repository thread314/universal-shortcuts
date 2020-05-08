#Initialise instance of the app
app = App.new

#Define app specific variables
app.unmapcommand = ""
app.mapcommand = ""
app.dotfilelocation = ""
app.defaultmodifier = ""
app.commentmarker = ""

#Assign the functions to each command

#Tabs
app.opennewtab[:function] = ""
app.selectprevioustab[:function] = "" 
app.selectnexttab[:function] = "" 
app.shifttableft[:function] = "" 
app.shifttabright[:function] = "" 
app.closecurrenttab[:function] = "" 
app.selectfirsttab[:function] = "" 
app.selectlasttab[:function] = "" 
app.buffernext[:function] = ""
app.bufferprevious[:function] = ""
app.bufferclose[:function] = ""

#View
app.stepforward[:function] = "" 
app.stepback[:function] = "" 
app.jumpforward[:function] = "" 
app.jumpback[:function] = "" 
app.find[:function] = "" 
app.gotostart[:function] = "" 
app.gotoend[:function] = "" 
app.zoomin[:function] = "" 
app.zoomout[:function] = "" 
app.resetzoom[:function] = "" 

#Files
app.openfile[:function] = "" 
app.newfile[:function] = "" 
app.savefile[:function] = "" 
app.saveandclose[:function] = "" 
app.closenosave[:function] = "" 
app.savefileas[:function] = "" 
app.searchforfile[:function] = "" 
app.savesession[:function] = "" 
app.loadsession[:function] = "" 

#Write the shortucts to the dotfile
app.write_shortcuts

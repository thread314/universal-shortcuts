#Initialise instance of the emacs
emacs = App.new

#Define emacs specific variables
emacs.unmapcommand = ""
emacs.mapcommand = "(global-set-key (kbd \"<?>\") '<!>)"
emacs.dotfilelocation = "~/.emacs"
emacs.defaultmodifier = "C-c C-y C-<?>"
emacs.commentmarker = ";"

#Assign the functions to each command

#Tabs
emacs.opennewtab[:function] = ""
emacs.selectprevioustab[:function] = "" 
emacs.selectnexttab[:function] = "" 
emacs.shifttableft[:function] = "" 
emacs.shifttabright[:function] = "" 
emacs.closecurrenttab[:function] = "" 
emacs.selectfirsttab[:function] = "" 
emacs.selectlasttab[:function] = "" 
emacs.buffernext[:function] = "next-buffer"
emacs.bufferprevious[:function] = "previous-buffer"
emacs.bufferclose[:function] = "kill-this-buffer"

#View
emacs.stepforward[:function] = "scroll-up-line" 
emacs.stepback[:function] = "scroll-down-line" 
emacs.jumpforward[:function] = "scroll-up-command" 
emacs.jumpback[:function] = "scroll-down-command" 
emacs.find[:function] = "" 
emacs.gotostart[:function] = "beginning-of-buffer" 
emacs.gotoend[:function] = "end-of-buffer" 
emacs.zoomin[:function] = "text-scale-adjust +" 
emacs.zoomout[:function] = "text-scale-adjust -" 
emacs.resetzoom[:function] = "text-scale-adjust 0" 

#Files
emacs.openfile[:function] = "find-file" 
emacs.newfile[:function] = "find-file" 
emacs.savefile[:function] = "save-buffer" 
emacs.saveandclose[:function] = "save-buffers-kill-emacs" 
emacs.closenosave[:function] = "kill-emacs" 
emacs.savefileas[:function] = "mark-whole-buffer 'write-region" 
emacs.searchforfile[:function] = "isearch-forward" 
emacs.savesession[:function] = "desktop-save"
emacs.loadsession[:function] = "desktop-read" 

#Write the shortucts to the dotfile
emacs.write_shortcuts

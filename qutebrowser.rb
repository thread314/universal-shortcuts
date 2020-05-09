#Initialise instance of the app
qutebrowser = App.new

#Define app specific variables
qutebrowser.unmapcommand = ""
qutebrowser.mapcommand = "config.bind('<?>', '<!>')"
qutebrowser.dotfilelocation = "~/.config/qutebrowser/config.py"
qutebrowser.defaultmodifier = "<?>"
qutebrowser.commentmarker = "#"

#Assign the functions to each command

#Tabs
qutebrowser.opennewtab[:function] = "open -t"
qutebrowser.selectprevioustab[:function] = "tab-prev" 
qutebrowser.selectnexttab[:function] = "tab-next" 
qutebrowser.shifttableft[:function] = "tab-move -" 
qutebrowser.shifttabright[:function] = "tab-move +" 
qutebrowser.closecurrenttab[:function] = "tab-close" 
qutebrowser.selectfirsttab[:function] = "tab-focus 1" 
qutebrowser.selectlasttab[:function] = "tab-focus -1" 
qutebrowser.buffernext[:function] = "forward"
qutebrowser.bufferprevious[:function] = "back"
qutebrowser.bufferclose[:function] = ""

#View
qutebrowser.stepforward[:function] = "scroll down" 
qutebrowser.stepback[:function] = "scroll up" 
qutebrowser.jumpforward[:function] = "scroll-page 0 1" 
qutebrowser.jumpback[:function] = "scroll-page 0 -1" 
qutebrowser.find[:function] = "set-cmd-text :search " 
qutebrowser.gotostart[:function] = "scroll-to-perc 0" 
qutebrowser.gotoend[:function] = "scroll-to-perc 100" 
qutebrowser.zoomin[:function] = "zoom-in" 
qutebrowser.zoomout[:function] = "zoom-out" 
qutebrowser.resetzoom[:function] = "zoom" 

#Files
qutebrowser.openfile[:function] = "set-cmd-text :open " 
qutebrowser.newfile[:function] = "set-cmd-text :open -t " 
qutebrowser.savefile[:function] = "" 
qutebrowser.saveandclose[:function] = "" 
qutebrowser.closenosave[:function] = "" 
qutebrowser.savefileas[:function] = "download" 
qutebrowser.searchforfile[:function] = "" 
qutebrowser.savesession[:function] = "set-cmd-text :save-session -o " 
qutebrowser.loadsession[:function] = "set-cmd-text :load-session " 

#Qutebrowser requires direct user configuations via file config.py. Create file if it doesn't exist and load existing user settings. 
if File.file?("#{ENV['HOME']}/.config/qutebrowser/config.py") == false
  configfile = File.new("#{ENV['HOME']}/.config/qutebrowser/config.py")
  configfile.puts("config.load_autoconfig()\n\n")
  configfile.close
end

#Write the shortucts to the dotfile
qutebrowser.write_shortcuts

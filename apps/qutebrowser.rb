#Initialise instance of the app
require 'json'
#qutebrowser = App.new

#Define app specific variables
output = {
"appvariables" => {
"unmapcommand" => "",
"mapcommand" => "config.bind('<?>', '<!>')",
"dotfilelocation" => "~/.config/qutebrowser/config.py",
"defaultmodifier" => "<?>",
"commentmarker" => "#",
},

#Assign the functions to each command

#Tabs
"tabshash" => {
"opennewtab" => {"function" => "open -t"},
"selectprevioustab" => {"function" => "tab-prev" },
"selectnexttab" => {"function" => "tab-next" },
"shifttableft" => {"function" => "tab-move -" },
"shifttabright" => {"function" => "tab-move +" },
"closecurrenttab" => {"function" => "tab-close" },
"selectfirsttab" => {"function" => "tab-focus 1" },
"selectlasttab" => {"function" => "tab-focus -1" },
"buffernext" => {"function" => "forward"},
"bufferprevious" => {"function" => "back"},
"bufferclose" => {"function" => ""},
},

#View
"viewshash" => {
"stepforward" => {"function" => "scroll down" },
"stepback" => {"function" => "scroll up" },
"jumpforward" => {"function" => "scroll-page 0 1" },
"jumpback" => {"function" => "scroll-page 0 -1" },
"find" => {"function" => "set-cmd-text  =>search " },
"gotostart" => {"function" => "scroll-to-perc 0" },
"gotoend" => {"function" => "scroll-to-perc 100" },
"zoomin" => {"function" => "zoom-in" },
"zoomout" => {"function" => "zoom-out" },
"resetzoom" => {"function" => "zoom" },
},

#Files
"fileshash" => {
"openfile" => {"function" => "set-cmd-text  =>open " },
"newfile" => {"function" => "set-cmd-text  =>open -t " },
"savefile" => {"function" => "" },
"saveandclose" => {"function" => "" },
"closenosave" => {"function" => "" },
"savefileas" => {"function" => "download" },
"searchforfile" => {"function" => "" },
"savesession" => {"function" => "set-cmd-text  =>save-session -o " },
"loadsession" => {"function" => "set-cmd-text  =>load-session " },
}
}

#Qutebrowser requires direct user configuations via file config.py. Create file if it doesn't exist and load existing user settings. 
#if File.file?("#{ENV['HOME']}/.config/qutebrowser/config.py") == false
#  configfile = File.new("#{ENV['HOME']}/.config/qutebrowser/config.py")
#  configfile.puts("config.load_autoconfig()\n\n")
#  configfile.close
#end

puts JSON.pretty_generate(output)
#Write the shortucts to the dotfile

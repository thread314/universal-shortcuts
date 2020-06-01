#Initialise instance of the emacs
require 'json'
#emacs = App.new

#Define emacs specific variables
output = {
  "appvariables" => {
    "unmapcommand" => "",
    "mapcommand" => "(global-set-key (kbd \"<?>\") '<!>)",
    "dotfilelocation" => "~/.emacs",
    "defaultmodifier" => "C-c C-y C-<?>",
    "commentmarker" => ";",
  },

  #Assign the functions to each command

  #Tabs
  "tabshash" => {
    "opennewtab" => {"function" => ""},
    "selectprevioustab" => {"function" => ""},
    "selectnexttab" => {"function" => "" },
    "shifttableft" => {"function" => "" },
    "shifttabright" => {"function" => "" },
    "closecurrenttab" => {"function" => "" },
    "selectfirsttab" => {"function" => "" },
    "selectlasttab" => {"function" => "" },
    "buffernext" => {"function" => "next-buffer"},
    "bufferprevious" => {"function" => "previous-buffer"},
    "bufferclose" => {"function" => "kill-this-buffer"},
  },

  #View
  "viewshash" => {
    "stepforward" => {"function" => "scroll-up-line" },
    "stepback" => {"function" => "scroll-down-line" },
    "jumpforward" => {"function" => "scroll-up-command" },
    "jumpback" => {"function" => "scroll-down-command" },
    "find" => {"function" => "" },
    "gotostart" => {"function" => "beginning-of-buffer" },
    "gotoend" => {"function" => "end-of-buffer" },
    "zoomin" => {"function" => "text-scale-adjust +" },
    "zoomout" => {"function" => "text-scale-adjust -" },
    "resetzoom" => {"function" => "text-scale-adjust 0" },
  },

  #Files
  "fileshash" => {
    "openfile" => {"function" => "find-file" },
    "newfile" => {"function" => "find-file" },
    "savefile" => {"function" => "save-buffer" },
    "saveandclose" => {"function" => "save-buffers-kill-emacs" },
    "closenosave" => {"function" => "kill-emacs" },
    "savefileas" => {"function" => "mark-whole-buffer 'write-region" },
    "searchforfile" => {"function" => "isearch-forward" },
    "savesession" => {"function" => "desktop-save"},
    "loadsession" => {"function" => "desktop-read" },
  }
  }

  puts JSON.pretty_generate(output)
  #Write the shortucts to the dotfile
  #emacs.write_shortcuts

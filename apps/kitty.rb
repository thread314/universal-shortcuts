#Initialise instance of the app
require 'json'
#kitty = App.new

#Define app specific variables
output = {
"appvariables" => {
"unmapcommand" => "",
"mapcommand" => "map <?> <!>",
"dotfilelocation" => "~/.config/kitty/kitty.conf",
"defaultmodifier" => "ctrl+shift+<?>",
"commentmarker" => "#",
},

#Assign the functions to each command

#Tabs
"tabshash" => {
"opennewtab" => {"function" => "new_tab_with_cwd"},
"selectprevioustab" => {"function" => "previous_tab" },
"selectnexttab" => {"function" => "next_tab" },
"shifttableft" => {"function" => "move_tab_backward" },
"shifttabright" => {"function" => "move_tab_forward" },
"closecurrenttab" => {"function" => "close_tab" },
"selectfirsttab" => {"function" => "goto_tab 1" },
"selectlasttab" => {"function" => "goto_tab 99" },
"buffernext" => {"function" => ""},
"bufferprevious" => {"function" => ""},
"bufferclose" => {"function" => ""}
},

#View
"viewshash" => {
"stepforward" => {"function" => "scroll_line_down" },
"stepback" => {"function" => "scroll_line_up" },
"jumpforward" => {"function" => "scroll_page_down" },
"jumpback" => {"function" => "scroll_page_up" },
"find" => {"function" => "show_scrollback" },
"gotostart" => {"function" => "scroll_home" },
"gotoend" => {"function" => "scroll_end" },
"zoomin" => {"function" => "change_font_size all +1.0" },
"zoomout" => {"function" => "change_font_size all -1.0" },
"resetzoom" => {"function" => "change_font_size all 0" },
},

#Files
"fileshash" => {
"openfile" => {"function" => "" },
"newfile" => {"function" => "" },
"savefile" => {"function" => "" },
"saveandclose" => {"function" => "" },
"closenosave" => {"function" => "" },
"savefileas" => {"function" => "" },
"searchforfile" => {"function" => "" },
"savesession" => {"function" => "" },
"loadsession" => {"function" => "" },
}
}


#Write the shortucts to the dotfile
#kitty.write_shortcuts

puts JSON.pretty_generate(output)

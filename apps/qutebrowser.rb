#Initialise instance of the app
qutebrowser = App.new

#Define app specific variables

#Qutebrowser requires direct user configuations via file config.py. Create file if it doesn't exist and load existing user settings. 
#if File.file?("#{ENV['HOME']}/.config/qutebrowser/config.py") == false
#  configfile = File.new("#{ENV['HOME']}/.config/qutebrowser/config.py")
#  configfile.puts("config.load_autoconfig()\n\n")
#  configfile.close
#end

#Write the shortucts to the dotfile

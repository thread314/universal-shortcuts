#Initialise instance of the app
vim = OpenStruct.new

vimsettings = JSON.parse(File.read('vim.json'))

#Write the shortucts to the dotfile
puts vimsettings["vimvariableshash"]
vimsettings["vimvariableshash"].each { |k,v| vim.public_send("#{k}=", v) }
injectfunctions($defaultshortcuts["tabshash"],vimsettings["vimtabshash"]).each { |k,v| vim.public_send("#{k}=", v) }
injectfunctions($defaultshortcuts["fileshash"],vimsettings["vimfileshash"]).each { |k,v| vim.public_send("#{k}=", v) }
injectfunctions($defaultshortcuts["viewshash"],vimsettings["vimviewshash"]).each { |k,v| vim.public_send("#{k}=", v) }
write_shortcuts(vim)

#masterhash = {"vimvariableshash" => vimvariableshash, "vimfileshash" => vimfileshash, "vimviewshash" => vimviewshash, "vimtabshash" => vimtabshash}
#puts JSON.pretty_generate(masterhash)

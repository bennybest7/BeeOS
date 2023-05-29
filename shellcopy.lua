 
term.setBackgroundColor(colors.black)
term.clear()
term.setTextColor(colors.white)
term.setCursorPos(1,1)
shell.run("cd disk")
print("copying files...")

shell.run("copy shellprograms/beehelp.lua ..")
shell.run("copy shellprograms/wind.lua ..")
shell.run("copy shellprograms/home.lua ..")


shell.run("cd ..")
print("done! you can now also go back by running 'home' in the shell")



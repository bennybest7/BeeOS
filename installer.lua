term.setBackgroundColor(colors.black)
term.clear()
term.setCursorPos(1,1)
term.setTextColor(colors.black)
term.setBackgroundColor(colors.orange)
print("Install BeeOS                                      ")
term.setBackgroundColor(colors.black)
term.setTextColor(colors.white)
print("Welcome to BeeOS installer")
print("Make sure you have a floppy disk inserted in your disk drive")
print("Do you want to install BeeOS? [y/n]")
if read() == "n" then
os.reboot()
end

shell.run("mkdir disk/shellprograms")
shell.run("cd disk/shellprograms")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/shellprograms/beehelp.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/shellprograms/home.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/shellprograms/wind.lua")
shell.run("cd ..")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/about_classic.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/backdrop.nfp")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/backdrop.txt")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/classic_home.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/dodgeattack.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/shell.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/shellcopy.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/startup.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/winabout.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/windowed.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/winrun.lua")
shell.run("wget https://raw.githubusercontent.com/bennybest7/BeeOS/main/winshell.lua")
print("Done!")
sleep(1)
os.reboot()


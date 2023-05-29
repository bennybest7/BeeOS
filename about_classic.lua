
term.setBackgroundColor(colors.lightBlue)
term.clear()
term.setCursorPos(1,1)
term.setTextColor(colors.black)
paintutils.drawBox(2,2,51,16,colors.blue)
paintutils.drawFilledBox(2,2,50,15,colors.white)
term.setBackgroundColor(colors.orange)
term.setCursorPos(2,2)
print("About                                            ")
term.setCursorPos(2,3)
term.setBackgroundColor(colors.white)
print("BeeOS 23.05.0")
term.setCursorPos(2,4)
print(os.version())
term.setCursorPos(2,5)
print(_HOST)
term.setCursorPos(2,7)
print("Mobile? : No")
term.setTextColor(colors.red)
term.setCursorPos(2,9)
print("this is a beta build")
term.setTextColor(colors.black)
term.setBackgroundColor(colors.green)
term.setCursorPos(4,11)
print("Continue")
term.setCursorPos(3,11)
term.setBackgroundColor(colors.white)
print(">")

while true do
local event,key = os.pullEvent("key")

if key == keys.enter then
shell.run("disk/classic_home")
end
end


paintutils.drawBox(7,5,48,15,colors.blue)
paintutils.drawFilledBox(7,5,47,14,colors.white)
term.setCursorPos(7,5)
term.setTextColor(colors.black)
term.setBackgroundColor(colors.orange)
print("About                                    ")
term.setBackgroundColor(colors.white)
term.setCursorPos(7,6)
print("BeeOS 23.05.0")
term.setCursorPos(7,7)
print(_HOST)
term.setCursorPos(7,8)
print(os.version())
term.setCursorPos(7,10)
print("Mobile : No")
term.setTextColor(colors.red)
term.setCursorPos(7,11)
print("Beta build")
term.setTextColor(colors.black)
term.setBackgroundColor(colors.green)
term.setCursorPos(9,13)
print(" Ok ")
term.setBackgroundColor(colors.red)
term.setCursorPos(47,5)
print("X")

while true do
local event,button,x,y = os.pullEvent("mouse_click")

if x >= 9 and x <= 13 and y == 13 or x == 47 and y == 5 then
shell.run("disk/windowed")
end
end

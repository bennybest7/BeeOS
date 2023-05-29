

run = hello
paintutils.drawBox(15,5,36,11,colors.blue)
paintutils.drawFilledBox(15,5,35,10,colors.white)
term.setCursorPos(15,5)
term.setBackgroundColor(colors.orange)
term.setTextColor(colors.black)
print("Run                  ")
paintutils.drawLine(17,7,33,7,colors.lightGray)
term.setBackgroundColor(colors.green)
term.setCursorPos(17,9)
print("Run")
term.setCursorPos(35,5)
term.setBackgroundColor(colors.red)
print("X")

while true do
local event,button,x,y = os.pullEvent("mouse_click")

if x == 35 and y == 5 then
shell.run("disk/windowed")
elseif y == 7 and x >= 17 and x <= 33 then
term.setCursorPos(17,7)
term.setBackgroundColor(colors.lightGray)
run = read()
elseif y == 9 and x >= 17 and x <= 19 then
term.setBackgroundColor(colors.black)
term.setTextColor(colors.white)
term.clear()
term.setCursorPos(1,1)
shell.run(run)
shell.run("disk/windowed")
end

end

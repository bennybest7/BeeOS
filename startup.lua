shell.run("cd ..")

if term.isColor() == false then
shell.run("disk/classic_home")
end

function drawScreen()
term.setBackgroundColor(colors.lightBlue)
term.clear()
paintutils.drawBox(10,5,41,16,colors.blue)
paintutils.drawFilledBox(10,5,40,15,colors.white)
term.setCursorPos(10,5)
term.setBackgroundColor(colors.orange)
term.setTextColor(colors.black)
print("BeeOS 23.05.0                  ")
term.setBackgroundColor(colors.red)
term.setCursorPos(40,5)
print("X")
term.setBackgroundColor(colors.white)
term.setCursorPos(10,6)
print("select an shell")
term.setBackgroundColor(colors.green)
term.setCursorPos(12,8)
print("Windowed")
term.setCursorPos(12,10)
print("Classic ")
term.setCursorPos(12,12)
print("Shell   ")
term.setBackgroundColor(colors.white)
term.setCursorPos(21,8)
print("Graphical interface")
term.setCursorPos(21,10)
print("Prototype 2 style")
term.setCursorPos(21,12)
print("Command prompt")

end
drawScreen()
while true do
drawScreen()
local event, button, x, y = os.pullEvent("mouse_click")

if y == 12 and x >= 12 and x <= 19 then
shell.run("disk/shell")
elseif y == 10 and x >= 12 and x <= 19 then
shell.run("disk/classic_home")
elseif y == 5 and x == 40 then
os.shutdown()
elseif y == 8 and x >= 12 and x <= 19 then
shell.run("disk/windowed")
end
end

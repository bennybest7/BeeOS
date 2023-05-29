shell.run("cd ..")
menu = false
menu1 = false
backdrop = 1


function drawScreen()
local file = fs.open("disk/backdrop.txt","r")
local backdrop = file.readAll()
file.close()

if backdrop == "1" then
term.setBackgroundColor(colors.lightBlue)
elseif backdrop == "2" then
term.setBackgroundColor(colors.red)
elseif backdrop == "3" then
term.setBackgroundColor(colors.lime)
elseif backdrop == "4" then
term.setBackgroundColor(colors.lightBlue)
end


term.clear()
if backdrop == "4" then
local image = paintutils.loadImage("disk/backdrop.nfp")
paintutils.drawImage(image,2,2)
end


term.setTextColor(colors.black)
paintutils.drawLine(1,1,52,1,colors.orange)
term.setBackgroundColor(colors.red)
term.setCursorPos(1,1)
print("BeeOS")
term.setCursorPos(7,1)
term.setBackgroundColor(colors.orange)
print("Backdrop")

if menu == true then
paintutils.drawFilledBox(1,2,15,7,colors.blue)
term.setCursorPos(1,2)
term.setBackgroundColor(colors.blue)
print("End session")
print("Run")
print("About")
print("Reboot")
print("Shut down")
print("Shell")
elseif menu1 == true then
paintutils.drawFilledBox(7,2,14,5,colors.blue)
term.setCursorPos(7,2)
term.setBackgroundColor(colors.blue)
print("Blue")
term.setCursorPos(7,3)
print("Red")
term.setCursorPos(7,4)
print("Green")
term.setCursorPos(7,5)
print("Hill")
end

end

while true do
drawScreen()
local event,button,x,y = os.pullEvent("mouse_click")

if x <= 5 and y == 1 then
menu = true
elseif x >= 16 or y >= 8 then
menu = false
elseif x <= 15 and y == 2 and menu == true then
shell.run("disk/startup")
elseif x <= 15 and y == 5 and menu == true then
os.reboot()
elseif x <= 15 and y == 6 and menu == true then
os.shutdown()
elseif x <= 15 and y == 3 and menu == true then
menu = false
drawScreen()
shell.run("disk/winrun")
elseif x <= 15 and y == 4 and menu == true then
menu = false
drawScreen()
shell.run("disk/winabout")
elseif x <= 16 and y == 7 and menu == true then
menu = false
drawScreen()
paintutils.drawBox(4,4,46,14,colors.blue)
shell.run("disk/winshell")
elseif x >= 7 and x <= 15 and y == 1 then
menu1 = true
end
if x <= 6 or x >= 16 or y >= 6 then
menu1 = false
elseif x >= 7 and x <= 15 and y == 2 and menu1 == true then
local file = fs.open("disk/backdrop.txt","w")
file.write("1")
menu1 = false
file.close()
drawScreen()
elseif x >= 7 and x <= 15 and y == 3 and menu1 == true then
local file = fs.open("disk/backdrop.txt","w")
file.write("2")
menu1 = false
file.close()
drawScreen()
elseif x >= 7 and x <= 15 and y == 4 and menu1 == true then
local file = fs.open("disk/backdrop.txt","w")
file.write("3")
menu1 = false
file.close()
drawScreen()
elseif x >= 7 and x <= 15 and y == 5 and menu1 == true then
local file = fs.open("disk/backdrop.txt","w")
file.write("4")
menu1 = false
file.close()
drawScreen()
end
end


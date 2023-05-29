shell.run("cd ..")

cursor = 5
function checkCursor()
if cursor == 5 then
shell.run("disk/startup")
elseif cursor == 8 then
os.shutdown()
elseif cursor == 6 then
paintutils.drawBox(15,5,36,11,colors.lightGray)
paintutils.drawFilledBox(15,5,35,10,colors.white)
term.setBackgroundColor(colors.orange)
term.setTextColor(colors.black)
term.setCursorPos(15,5)
print("run                  ")
paintutils.drawLine(17,7,33,7,colors.lightGray)
term.setBackgroundColor(colors.lightGray)
term.setCursorPos(17,7)
run  = read()
term.setBackgroundColor(colors.black)
term.clear()
term.setCursorPos(1,1)
shell.run(run)
shell.run("disk/classic_home")
elseif cursor == 7 then
shell.run("disk/about_classic")
shell.run("disk/classic_home")
elseif cursor == 9 then
shell.run("disk/shell")
elseif cursor == 10 then
shell.run("disk/dodgeattack")
end
end



function drawScreen()
term.setCursorPos(1,1)
term.setBackgroundColor(colors.lightBlue)
term.clear()
term.setTextColor(colors.black)
paintutils.drawBox(10,3,41,16,colors.blue)
paintutils.drawFilledBox(10,3,40,15,colors.white)
term.setBackgroundColor(colors.orange)
term.setCursorPos(10,3)
print("Classic home                   ")
term.setBackgroundColor(colors.green)
term.setCursorPos(13,5)
print("| Back         |")
term.setCursorPos(13,6)
print("| Run          |")
term.setCursorPos(13,7)
print("| About        |")
term.setCursorPos(13,8)
print("| Shut down    |")
term.setCursorPos(13,9)
print("| Shell        |")
term.setCursorPos(13,10)
print("| Dodge attack |")
term.setBackgroundColor(colors.white)
term.setCursorPos(12,cursor)
print(">")
end

drawScreen()

while true do
local event,key = os.pullEvent("key")

if key == keys.up then
cursor = cursor - 1
drawScreen()
elseif key == keys.down then
cursor = cursor + 1
drawScreen()
elseif key == keys.enter then
checkCursor()
end

if cursor <= 4 then
cursor = 5
drawScreen()
elseif cursor >= 11 then
cursor = 10
drawScreen()
end

end


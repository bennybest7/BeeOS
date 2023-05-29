score = 0
playerpos = 26
enemy1pos = 1
enemy2pos = 3
enemy3pos = 5
enemy4pos = 7
function drawScreen()
term.setBackgroundColor(colors.lightBlue)
term.clear()
term.setTextColor(colors.black)
term.setCursorPos(1,1)
paintutils.drawLine(1,1,51,1,colors.yellow)
term.setCursorPos(1,1)
print("score:",score)
term.setBackgroundColor(colors.orange)
term.setCursorPos(playerpos,15)
print(" ")
term.setCursorPos(enemy1pos,2)
print("!")
term.setCursorPos(enemy2pos,2)
print("!")
term.setCursorPos(enemy3pos,2)
print("!")
term.setCursorPos(enemy4pos,2)
print("!")
paintutils.drawFilledBox(1,16,51,18,colors.green)
term.setCursorPos(1,1)
end
drawScreen()

while true do
if enemy1pos == playerpos or enemy2pos == playerpos or enemy3pos == playerpos or enemy4pos == playerpos then
term.setCursorPos(5,13)
term.setBackgroundColor(colors.lightBlue)
print("game over")
sleep(2)
shell.run("disk/classic_home")
end


enemy1pos = math.random(1,51)
enemy2pos = math.random(1,51)
enemy3pos = math.random(1,51)
enemy4pos = math.random(1,51)
local event,key = os.pullEvent("key")
if key == keys.right and playerpos <= 50 then
playerpos = playerpos + 1
drawScreen()
elseif key == keys.left and playerpos >= 2 then
playerpos = playerpos - 1
drawScreen()
end
end

 



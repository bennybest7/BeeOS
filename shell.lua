term.setBackgroundColor(colors.black)
term.clear()
term.setCursorPos(1,1)
term.setTextColor(colors.orange)
print("Welcome to BeeOS shell!")
print("Your CraftOS version is",os.version())
print("To return run 'disk/startup' ")
print("To install BeeOS shell programs run disk/shellcopy")
term.setTextColor(colors.lightGray)
term.setCursorPos(1,5)
while true do
term.setTextColor(colors.lightGray)
io.write("->")
shell.run(read())
end


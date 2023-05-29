os.pullEvent = os.pullEventRaw
term.setBackgroundColor(colors.orange)
term.setTextColor(colors.black)
term.setCursorPos(4,3)
print("Shell                                       ")
local window = window.create(term.current(),4,4,44,12)
oldterm = term.redirect(window)
window.setBackgroundColor(colors.black)
window.setTextColor(colors.white)
window.clear()

term.redirect(window)
term.setBackgroundColor(colors.black)
term.setTextColor(colors.white)
print("Welcome to windowed shell! to return run 'disk/windowed'.")
while true do
io.write("->")
run = read()
if run == "disk/windowed" or run == "wind" or run == "disk/windowed.lua" then
term.redirect(oldterm)
shell.run("disk/windowed")
end
shell.run(run)
term.setBackgroundColor(colors.gray)
window.redraw()
window.setBackgroundColor(colors.black)
term.setTextColor(colors.white)
end

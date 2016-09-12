--Function Defining
function drawText(_x,_y,_line1,_line2,_line3)
  w, h = term.getSize()
  local x = _x or 1
  local y = _y or h-3
  term.setCursorPos(x,y)
  print("/"..("-"):rep(w-2).."\\")
  print("|".._line1..(" "):rep(w-(#_line1+2)).."|")
  print("|".._line2..(" "):rep(w-(#_line2+2)).."|")
  print("|".._line3..(" "):rep(w-(#_line3+2)).."|")
  write("\\"..("-"):rep(w-2).."/")
end
function getName()
term.clear()
drawText(nil,nil,"Welcome to Overtale! This is (or will be) a RPG",
                 "game created by manu_03. I hope you enjoy it!",
                 "so let's talk about you. What's your name?")
print()
write("My name is ")
name = read()
term.clear()
if name:len() > 6 then
  drawText(nil,nil,"Oh... I'm sorry, but I think your name is too",
                   "long. It MUST be 6 characters or below, but",
                   "can't be blank.")
  getName()
elseif name:len() == 0 then
  drawText(nil,nil,"Oh... I'm sorry, but I think your name is too",
                   "short. I don't like people whose name doesn't",
                   "have any characters.")
  getName()
end
end
getName()

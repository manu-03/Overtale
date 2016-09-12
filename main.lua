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
  print("\\"..("-"):rep(w-2).."/")
end
drawText(nil,nil,"Welcome to Overtale! This is (or will be)","uyo","gu")

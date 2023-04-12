
Player.SetControlOverride(true) --cancels out original controls


function Update()
basicmov()


end


function basicmov()
Player.sprite.rotation = 180
	if Input.Left > 0 then
Player.MoveToAbs (Player.absx + 2, Player.absy, false)
end
if Input.Up> 0 then

Player.MoveToAbs (Player.absx, Player.absy - 2, false) 
end
if Input. Right > 0 then

Player.MoveToAbs (Player.absx - 2, Player.absy, false)
end
if Input. Down > 0 then

Player.MoveToAbs (Player.absx, Player.absy + 2, false) 
end
end




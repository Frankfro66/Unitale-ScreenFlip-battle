--Holds the player in place during pauses in the intro.

--playerbullet = CreateProjectile("heartred", Player.x, Player.y)
--playerbullet.SetVar('tile', 1)
Player.SetControlOverride(true) 
arenasize = {155, 130}
--Player.MoveTo(0,0,true)





SetGlobal("dir",2)
Player.sprite.rotation = 180
function Update()
basicmov()
	--Player.MoveTo(0,0,true)
	--playerbullet.MoveTo(Player.x, Player.y)
	--playerbullet.SendToTop()

end


function basicmov()
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

function OnHit(bullet)
	if(bullet.GetVar('tile')) == 0 then
    		Player.Hurt(1)
	end
end

function EndingWave()
Player.sprite.rotation = 0
end
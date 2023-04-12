require "soul/soul"

guy = CreateSprite("poseur")
guy.Move(0,108)
CreateLayer("mask","BelowArena",true)
CreateLayer("uimask","BelowArena",true)
fakeui = CreateSprite("empty","uimask")
 hpmask = CreateSprite("empty","mask")
 hpmask.Move(-95,-168)
hpmask.scale(.63,.05)
hpmask.color = {0.0,0.0,0.0}
fakeui.scale(.65,.65)
fakeui.Move(0,200)
fakeui.rotation = 180

function Update()
if GetGlobal("dir") == 2 then

end
end
function flip()

--if GetGlobal("dir") == 2 then
--guy.Move(0,guy.y-guy.y*2)
hpmask.set("white")
hpmask.scale(4,.65)
hpmask.Move(95,-10)
	guy.rotation = 180
	guy.Move(0,-190)
	fakeui.set("fake menu")
	Arena.Move(0, Arena.y+Arena.y - 40, true, true)
end

function norm()
	guy.Move(0,190)
	fakeui.set("empty")
	hpmask.set("empty")
end



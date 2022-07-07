function onCreate()
	--Stage thingies
	makeAnimatedLuaSprite('animated_shit', 'exe_shit/NewTitleMenuBG', -450, -400)
	makeLuaSprite('glitch', 'exe_shit/Glitch', -450, -400)
	makeLuaSprite('grass', 'exe_shit/Grass', -450, -300)
	makeLuaSprite('tree1', 'exe_shit/Trees', -450, -400)
	makeLuaSprite('tree2', 'exe_shit/Trees2', -450, -400)
		--scaleLuaSprite('grass', 4, 4)

	--Layering
	setObjectOrder('glitch', 1)
	setObjectOrder('animated_shit', 2)
	setObjectOrder('tree1', 3)
	setObjectOrder('tree2', 4)
	setObjectOrder('grass', 5)
	setObjectOrder('dadGroup', 6)
	setObjectOrder('boyfriendGroup', 7)
	
	--Adding sprites
	addLuaSprite('tree2', false)
	addLuaSprite('tree1', false)
	addLuaSprite('grass', false)
	--addLuaSprite('glitch', false)
	addLuaSprite('animated_shit', false)

end	
		
--Special Events
beatHitFuncs = {
	--[10] = function() 
	--addLuaSprite('exemple', false)
	--setObjectOrder('exemple', 4)
	--end,
}
--Simpler Version
function onBeatHit()
	if beatHitFuncs[curBeat] then 
		beatHitFuncs[curBeat]()
	end
end
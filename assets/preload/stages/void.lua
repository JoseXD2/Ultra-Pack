doRockHover = false;

function onCreate()
	-- -- background shit
	makeLuaSprite('tower', 'tower', -225, -425);
	setScrollFactor('tower', 0.5, 0.5);

	makeLuaSprite('ground', 'floor', -830, -720);
	setScrollFactor('ground', 1, 1);
	setProperty("ground.scale.x", 1.2);
	setProperty("ground.scale.y", 1.2);
	
	makeLuaSprite('back','blanco',-650, -300)
    addLuaSprite('back',false)
    scaleObject('back', 4.0, 4.0);
    setLuaSpriteScrollFactor('back', 1, 1);
	
	makeAnimatedLuaSprite('bgg','The_void',-650, -300)
    addAnimationByPrefix('bgg','The_void','VoidShift',24,true);
    scaleObject('bgg', 2.45, 2.45);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('agotirock', 'rock', -300, -200);
		setScrollFactor('agotirock', 0.8, 0.8);
	end
	
    addLuaSprite('bgg',false)
	addLuaSprite('tower', false);
	addLuaSprite('agotirock', false);
	doRockHover = true;

	addLuaSprite('ground', false);
	
	-- close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

-- -350 + Math.sin((Conductor.songPosition / 1000) * (Conductor.bpm / 60) * 1.5) * 12.5;

function onUpdate(elapsed)
	-- getSongPosition();
	if (doRockHover) then
		local songPos = getSongPosition();
		setProperty("agotirock.y", -350 + math.sin((songPos / 2000) * (bpm / 60) * 1.5) * 22.5);
		--setProperty("videoBackground.y", -350 + math.sin((songPos / 2000) * (bpm / 60) * 1.5) * 22.5);
	end
end
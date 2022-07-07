function onCreate()
	-- background shit
	makeLuaSprite('landcutebg', 'landcutebg', -1000, -500);
	setScrollFactor('landcutebg', 0.9, 0.9);
	
	makeLuaSprite('landcutefront', 'landcutefront', -600, 700);
	setScrollFactor('landcutefront', 0.9, 0.9);
	scaleObject('landcutefront', 1.1, 1.1);

	addLuaSprite('landcutebg', false);
	addLuaSprite('landcutefront', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
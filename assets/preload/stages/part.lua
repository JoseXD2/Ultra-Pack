function onCreate()
	-- background shit
	makeLuaSprite('part', 'part', -600, -300);
	setScrollFactor('part', 0.9, 0.9);

	addLuaSprite('part', false);
	
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
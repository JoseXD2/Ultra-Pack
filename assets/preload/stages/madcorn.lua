function onCreate()
	-- background shit
	makeLuaSprite('madcorn', 'madcorn', -600, -300);
	setScrollFactor('madcorn', 0.9, 0.9);

	addLuaSprite('madcorn', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
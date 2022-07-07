function onCreate()
	-- background shit
	makeLuaSprite('citycar', 'citycar', -600, -300);
	setScrollFactor('citycar', 0.9, 0.9);

	addLuaSprite('citycar', false);

	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
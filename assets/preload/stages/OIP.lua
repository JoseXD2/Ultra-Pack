function onCreate()
	-- background shit
	makeLuaSprite('OIP', 'OIP', -600, -300);
	setScrollFactor('OIP', 0.9, 0.9);

	addLuaSprite('OIP', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
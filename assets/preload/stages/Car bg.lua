function onCreate()
	-- background shit
	makeLuaSprite('Car bg', 'Car bg', -600, -300);
	setScrollFactor('Car bg', 0.9, 0.9);

	addLuaSprite('Car bg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
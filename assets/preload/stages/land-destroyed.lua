function onCreate()
	-- background shit
	makeLuaSprite('land-destroyedbg', 'land-destroyedbg', -600, -300);
	setScrollFactor('land-destroyedbg', 0.9, 0.9);
	
	makeLuaSprite('land-destroyedfront', 'land-destroyedfront', -650, 600);
	setScrollFactor('land-destroyedfront', 0.9, 0.9);
	scaleObject('land-destroyedfront', 1.1, 1.1);

	addLuaSprite('land-destroyedbg', false);
	addLuaSprite('land-destroyedfront', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
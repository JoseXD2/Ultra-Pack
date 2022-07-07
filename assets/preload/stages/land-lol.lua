function onCreate()
	-- background shit
	makeLuaSprite('landlolbg', 'landlolbg', -600, -300);
	setScrollFactor('landlolbg', 0.9, 0.9);
	
	makeLuaSprite('landlolfront', 'landlolfront', -650, 600);
	setScrollFactor('landlolfront', 0.9, 0.9);
	scaleObject('landlolfront', 1.1, 1.1);

	addLuaSprite('landlolbg', false);
	addLuaSprite('landlolfront', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
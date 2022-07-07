function onCreate()
	-- background shit
	makeLuaSprite('landbodybg', 'landbodybg', -1000, -500);
	setScrollFactor('landbodybg', 0.9, 0.9);
	
	makeLuaSprite('landbodyfront', 'landbodyfront', -600, 700);
	setScrollFactor('landbodyfront', 0.9, 0.9);
	scaleObject('landbodyfront', 1.1, 1.1);

	addLuaSprite('landbodybg', false);
	addLuaSprite('landbodyfront', false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
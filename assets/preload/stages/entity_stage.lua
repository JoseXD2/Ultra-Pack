function onCreate()
	-- background shit
	makeLuaSprite('bg', 'Stage_LayerTop', -300, -400);
	setScrollFactor('bg', 0.9, 0.9);
	scaleObject('bg',1.3,1.3,true)
	
	addLuaSprite('bg', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
function onCreate()
	-- background shit
	makeLuaSprite('spikes_bg', 'spikes_bg', -500, -540);
	setScrollFactor('spikes_bg', 0.9, 0.9);
        
	makeLuaSprite('BigSpike', 'BigSpike', 650, -300);
	setScrollFactor('BigSpike', 0.9, 0.9);
	scaleObject('BigSpike', 1.00, 1.00);
	
	makeLuaSprite('s', 's', -200, 675);
	setScrollFactor('s', 0.9, 0.9);
	scaleObject('s', 1.00, 1.00);

	addLuaSprite('spikes_bg', false);
	addLuaSprite('BigSpike', false);
	addLuaSprite('s', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stagepvz/SkyGraphicLAWN', -500, -300);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagepvz/FrontLawnLAWN', -500, -300);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
    makeLuaSprite('BushGroup', 'stagepvz/BushGroup', 1400, 350);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
    makeAnimatedLuaSprite('SunflowerBopBack', 'stagepvz/SunflowerBopBack', 100, 400);
	scaleObject('SunflowerBopBack',0.8,0.8);
	setLuaSpriteScrollFactor('SunflowerBopBack', 0.9, 0.9);
	
	makeAnimatedLuaSprite('SunflowerBopBack2', 'stagepvz/SunflowerBopBack', -200, 430);
	scaleObject('SunflowerBopBack2',0.8,0.8);
	setLuaSpriteScrollFactor('SunflowerBopBack2', 0.9, 0.9);
	
	makeAnimatedLuaSprite('SunflowerBop', 'stagepvz/SunflowerBop', -200, 400);
	scaleObject('SunflowerBop',1,1);
	setLuaSpriteScrollFactor('SunflowerBop', 0.9, 0.9);
	
	end

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('BushGroup', false);
    addLuaSprite('SunflowerBopBack', false);
	addAnimationByPrefix('SunflowerBopBack','idle','sunflower bop',24,true);
	addLuaSprite('SunflowerBopBack2', false);
	addAnimationByPrefix('SunflowerBopBack2','idle','sunflower bop',24,true);
	addLuaSprite('SunflowerBop', false);
	addAnimationByPrefix('SunflowerBop','idle','sunflower bop',24,true);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
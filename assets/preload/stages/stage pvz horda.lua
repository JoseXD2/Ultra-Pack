function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stagepvz/ZOMBIESkyGraphicLAWN', -500, -300);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagepvz/ZOMBIEFrontLawnLAWN', -500, -300);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
    makeLuaSprite('BushGroup', 'stagepvz/ZOMBIEBushGroup', 1400, 350);
	
    makeLuaSprite('PurpleCloud', 'stagepvz/PurpleCloud', 500, -100);
	scaleObject('PurpleCloud',0.9,0.9);

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
	
	makeAnimatedLuaSprite('Repeater', 'stagepvz/Repeater', -100, 400);
	scaleObject('Repeater',1.3,1.3);
	setLuaSpriteScrollFactor('Repeater', 0.9, 0.9);
	
	makeAnimatedLuaSprite('Chomper', 'stagepvz/Chomper', 200, 350);
	scaleObject('Chomper',0.6,0.6);
	setLuaSpriteScrollFactor('Chomper', 0.9, 0.9);
	
	makeAnimatedLuaSprite('zombiewalking1', 'stagepvz/zombiewalking', 1200, 300);
	scaleObject('zombiewalking1',0.6,0.6);
	setLuaSpriteScrollFactor('zombiewalking1', 0.9, 0.9);
	
	makeAnimatedLuaSprite('bucketzombiewalking', 'stagepvz/bucketzombiewalking', 1430, 330);
	scaleObject('bucketzombiewalking',0.6,0.6);
	setLuaSpriteScrollFactor('bucketzombiewalking', 0.9, 0.9);	
	
	makeAnimatedLuaSprite('ZombieWalking3', 'stagepvz/ZombieWalking3', 1250, 300);
	scaleObject('ZombieWalking3',0.7,0.7);
	setLuaSpriteScrollFactor('ZombieWalking3', 0.9, 0.9);
	
	makeAnimatedLuaSprite('FrontZombieWalk', 'stagepvz/FrontZombieWalk', 1280, 600);
	scaleObject('FrontZombieWalk',0.7,0.7);
	setLuaSpriteScrollFactor('FrontZombieWalk', 0.9, 0.9);
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
	addLuaSprite('Repeater', true);
	addAnimationByPrefix('Repeater','idle','Repeater Idle',24,true);
	addLuaSprite('Chomper', false);
	addAnimationByPrefix('Chomper','idle','Chomper Idle',24,true);
	addLuaSprite('PurpleCloud', false);
	addLuaSprite('zombiewalking1', false);
	addAnimationByPrefix('zombiewalking1','idle','Zombie chantin',26,true);
	addLuaSprite('bucketzombiewalking', false);
	addAnimationByPrefix('bucketzombiewalking','idle','Zombie chantin Bucket',26,true);
	addLuaSprite('ZombieWalking3', false);
	addAnimationByPrefix('ZombieWalking3','idle','Zombie chantin',26,true);
	addLuaSprite('FrontZombieWalk', true);
	addAnimationByPrefix('FrontZombieWalk','idle','front zombie halt',26,true);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
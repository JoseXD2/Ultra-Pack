function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stagepvz/SkyGraphicLAWN', -500, -300);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagepvz/FrontLawnLAWN', -500, -300);
	setLuaSpriteScrollFactor('stagefront', 0.9, 0.9);
    makeLuaSprite('BushGroup', 'stagepvz/BushGroup', 1400, 350);

	-- sprites that only load if Low Quality is turned off

    makeAnimatedLuaSprite('SunflowerBopBack', 'stagepvz/SunflowerBopBack', 100, 400);
	scaleObject('SunflowerBopBack',0.8,0.8);
	setLuaSpriteScrollFactor('SunflowerBopBack', 0.9, 0.9);
	
	makeAnimatedLuaSprite('SunflowerBopBack2', 'stagepvz/SunflowerBopBack', -200, 430);
	scaleObject('SunflowerBopBack2',0.8,0.8);
	setLuaSpriteScrollFactor('SunflowerBopBack2', 0.9, 0.9);
	
	makeAnimatedLuaSprite('SunflowerBop', 'stagepvz/SunflowerBop', -200, 400);
	scaleObject('SunflowerBop',1,1);
	setLuaSpriteScrollFactor('SunflowerBop', 0.9, 0.9);
	
	

	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	addLuaSprite('BushGroup', false);
    addLuaSprite('SunflowerBopBack', false);
	addAnimationByPrefix('SunflowerBopBack','idle','sunflower bop',24,true);
	addLuaSprite('SunflowerBopBack2', false);
	addAnimationByPrefix('SunflowerBopBack2','idle','sunflower bop',24,true);
	addLuaSprite('SunflowerBop', false);
	addAnimationByPrefix('SunflowerBop','idle','sunflower bop',24,true);
	
	
	makeLuaSprite('stageback1', 'stagepvz/ZOMBIESkyGraphicLAWN', -500, -300);
	setLuaSpriteScrollFactor('stageback1', 0.9, 0.9);
	
	makeLuaSprite('stagefront1', 'stagepvz/ZOMBIEFrontLawnLAWN', -500, -300);
	setLuaSpriteScrollFactor('stagefront1', 0.9, 0.9);
    makeLuaSprite('BushGroup1', 'stagepvz/ZOMBIEBushGroup', 1400, 350);
	
    makeLuaSprite('PurpleCloud', 'stagepvz/PurpleCloud', 500, -100);
	scaleObject('PurpleCloud',0.9,0.9);

	-- sprites that only load if Low Quality is turned off

    makeAnimatedLuaSprite('SunflowerBopBack1', 'stagepvz/SunflowerBopBack', 100, 400);
	scaleObject('SunflowerBopBack1',0.8,0.8);
	setLuaSpriteScrollFactor('SunflowerBopBack1', 0.9, 0.9);
	
	makeAnimatedLuaSprite('SunflowerBopBack21', 'stagepvz/SunflowerBopBack', -200, 430);
	scaleObject('SunflowerBopBack21',0.8,0.8);
	setLuaSpriteScrollFactor('SunflowerBopBack21', 0.9, 0.9);
	
	makeAnimatedLuaSprite('SunflowerBop1', 'stagepvz/SunflowerBop', -200, 400);
	scaleObject('SunflowerBop1',1,1);
	setLuaSpriteScrollFactor('SunflowerBop1', 0.9, 0.9);
	
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


	addLuaSprite('stageback1', false);
	addLuaSprite('stagefront1', false);
	addLuaSprite('BushGroup1', false);
    addLuaSprite('SunflowerBopBack1', false);
	addAnimationByPrefix('SunflowerBopBack1','idle','sunflower bop',24,true);
	addLuaSprite('SunflowerBopBack21', false);
	addAnimationByPrefix('SunflowerBopBack21','idle','sunflower bop',24,true);
	addLuaSprite('SunflowerBop1', false);
	addAnimationByPrefix('SunflowerBop1','idle','sunflower bop',24,true);
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
	
	setProperty('stageback1.visible', false);
	setProperty('stagefront1.visible', false);
	setProperty('BushGroup1.visible', false);
	setProperty('SunflowerBopBack1.visible', false);
	setProperty('SunflowerBopBack21.visible', false);
	setProperty('SunflowerBop1.visible', false);
	setProperty('Repeater.visible', false);
	setProperty('Chomper.visible', false);
	setProperty('PurpleCloud.visible', false);
	setProperty('zombiewalking1.visible', false);
	setProperty('bucketzombiewalking.visible', false);
	setProperty('ZombieWalking3.visible', false);
	setProperty('FrontZombieWalk.visible', false);
	
end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == '1' then
	setProperty('stageback1.visible', false);
	setProperty('stagefront1.visible', false);
	setProperty('BushGroup1.visible', false);
	setProperty('SunflowerBopBack1.visible', false);
	setProperty('SunflowerBopBack21.visible', false);
	setProperty('SunflowerBop1.visible', false);
	setProperty('Repeater.visible', false);
	setProperty('Chomper.visible', false);
	setProperty('PurpleCloud.visible', false);
	setProperty('zombiewalking1.visible', false);
	setProperty('bucketzombiewalking.visible', false);
	setProperty('ZombieWalking3.visible', false);
	setProperty('FrontZombieWalk.visible', false);
	setProperty('stageback.visible', true);
	setProperty('stagefront.visible', true);
	setProperty('BushGroup.visible', true);
	setProperty('SunflowerBopBack.visible', true);
	setProperty('SunflowerBopBack2.visible', true);
	setProperty('SunflowerBop.visible', true);
		end
		
		if value1 == '2' then
	setProperty('stageback1.visible', true);
	setProperty('stagefront1.visible', true);
	setProperty('BushGroup1.visible', true);
	setProperty('SunflowerBopBack1.visible', true);
	setProperty('SunflowerBopBack21.visible', true);
	setProperty('SunflowerBop1.visible', true);
	setProperty('Repeater.visible', true);
	setProperty('Chomper.visible', true);
	setProperty('PurpleCloud.visible', true);
	setProperty('zombiewalking1.visible', true);
	setProperty('bucketzombiewalking.visible', true);
	setProperty('ZombieWalking3.visible', true);
	setProperty('FrontZombieWalk.visible', true);
	setProperty('stageback.visible', false);
	setProperty('stagefront.visible', false);
	setProperty('BushGroup.visible', false);
	setProperty('SunflowerBopBack.visible', false);
	setProperty('SunflowerBopBack2.visible', false);
	setProperty('SunflowerBop.visible', false);

		end
	end
end
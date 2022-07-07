function onCreate()
	-- background shit
	makeLuaSprite('bg', 'Mira', -300, -110);
	setScrollFactor('bg', 1, 1);
	scaleObject('bg', 1.4, 1.4);
	
	makeLuaSprite('bgDark', 'MiraDark', -300, -110);
	setScrollFactor('bgDark', 1, 1);
	scaleObject('bgDark', 1.4, 1.4);
    setProperty('bgDark.visible', false)
	
	makeLuaSprite('stageFront', 'vending_machine', 1000, 150);
	setScrollFactor('stageFront', 1, 1);
	
	makeLuaSprite('machineDark', 'vending_machineDark', 1000, 150);
	setScrollFactor('machineDark', 1, 1);
    setProperty('machineDark.visible', false)
	
	makeLuaSprite('stageFront2', 'table', -1065, 720);
	setScrollFactor('stageFront2', 1, 1);
	scaleObject('stageFront2', 1.6, 1.6);
	
	makeLuaSprite('stageFront3', 'table', 1385, 720);
	setScrollFactor('stageFront3', 1, 1);
	scaleObject('stageFront3', 1.6, 1.6);
	setProperty('stageFront3.flipX', true);
	
	makeLuaSprite('stageFront2Dark', 'tableDark', -1065, 720);
	setScrollFactor('stageFront2Dark', 1, 1);
	scaleObject('stageFront2Dark', 1.6, 1.6);
    setProperty('stageFront2Dark.visible', false)
	
	makeLuaSprite('stageFront3Dark', 'tableDark', 1600, 800);
	setScrollFactor('stageFront3Dark', 1, 1);
	scaleObject('stageFront3Dark', 1.6, 1.6);
	setProperty('stageFront3Dark.flipX', true);
    setProperty('stageFront3Dark.visible', false)
	
	makeLuaSprite('miraGradient', 'MiraGradient', -300, -110);
	setScrollFactor('miraGradient', 1, 1);
	scaleObject('miraGradient', 1.4, 1.4);
    setProperty('miraGradient.visible', false)
	
	makeLuaSprite('lightsOutSprite', 'black', -700, -70);
	setScrollFactor('lightsOutSprite', 0, 0);
    setProperty('lightsOutSprite.visible', false)

	addLuaSprite('bg', false);
	addLuaSprite('bgDark', false);
	addLuaSprite('stageFront', false);
	addLuaSprite('machineDark', false);
	addLuaSprite('stageFront2', true);
	addLuaSprite('stageFront3', true);
	addLuaSprite('stageFront2Dark', true);
	addLuaSprite('stageFront3Dark', true);
	addLuaSprite('miraGradient', true);
	addLuaSprite('lightsOutSprite', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
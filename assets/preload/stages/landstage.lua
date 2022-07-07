local allowCountdown = false

function onStartCountdown()
	if not allowCountdown then
		allowCountdown = true;
		startCountdown()
		return Function_Stop;
	end
	return Function_Continue;
end

function onCreate()

	makeAnimatedLuaSprite('Estatica papu', 'mario/EXE2/Estatica papu', -265, -12);
   addAnimationByPrefix('Estatica papu', 'Estatica papu', 'Estatica papu', 24, true);  
    objectPlayAnimation('Estatica papu', 'Estatica papu', true)
    scaleObject('Estatica papu', 3 , 3)  
    addLuaSprite('Estatica papu', false);

	makeLuaSprite('weaspuki2', 'mario/EXE2/weaspuki2', -265, 620);
	addLuaSprite('weaspuki2', false);
    scaleObject('weaspuki2', 2 , 2)  

	makeAnimatedLuaSprite('Mario_Phase2_GF_Assets_v1', 'Mario_Phase2_GF_Assets_v1', 400, 800);
	setProperty('Mario_Phase2_GF_Assets_v1.flipX', false);
	addAnimationByPrefix('Mario_Phase2_GF_Assets_v1', 'enter', 'GF Dancing Beat', 24, true);
	setProperty('Mario_Phase2_GF_Assets_v1.scale.x', getProperty('Mario_Phase2_GF_Assets_v1.scale.x') + 0.56);
	setProperty('Mario_Phase2_GF_Assets_v1.scale.y', getProperty('Mario_Phase2_GF_Assets_v1.scale.y') + 0.56);
	setLuaSpriteScrollFactor('Mario_Phase2_GF_Assets_v1', 1, 1);
	scaleObject('Mario_Phase2_GF_Assets_v1', 3 , 3) 
	addLuaSprite('Mario_Phase2_GF_Assets_v1', false);
	setProperty('Mario_Phase2_GF_Assets_v1.antialiasing', false);

	makeLuaSprite('weaspuki1', 'mario/EXE2/weaspuki1', -265, 720);
	addLuaSprite('weaspuki1', false);
    scaleObject('weaspuki1', 2 , 2)  

	makeLuaSprite('Nubes', 'mario/EXE2/Nubes', -265, -12);
	addLuaSprite('Nubes', false);
    scaleObject('Nubes', 2, 2)  

	makeLuaSprite('Nubes2', 'mario/EXE2/Nubes2', -265, 620);
	addLuaSprite('Nubes2', false);
    scaleObject('Nubes2', 2 , 2)  

	makeLuaSprite('Nubes3', 'mario/EXE2/Nubes3', -265, 720);
	addLuaSprite('Nubes3', false);
    scaleObject('Nubes3', 2 , 2)  

	makeLuaSprite('Nubes4', 'mario/EXE2/Nubes4', 425, 142);
	addLuaSprite('Nubes4', true);
    scaleObject('Nubes4', 3, 3)  

    makeLuaSprite('difum', 'difum', 0, 0);
    scaleObject('difum', 1, 1)  
    addLuaSprite('difum', false);
    setProperty('difum.visible', false);
    setObjectCamera('difum', 'hud');	

end 

function onEvent(name,value1,value2)
	if name == 'Triggers Golden Land' then 

      if value1 == '1' then
      setProperty('difum.visible', true);
   end 
        if value1 == '2' then
            setProperty('Nubes.visible', false);
			setProperty('Nubes2.visible', false);		
			setProperty('Nubes3.visible', false);	
			setProperty('difum.visible', true);													
	   end

	    if value1 == '3' then
		addLuaSprite('Mario_Phase2_GF_Assets_v1', false);
		objectPlayAnimation('Mario_Phase2_GF_Assets_v1', 'enter', true); 
		doTweenY('Mario_Phase2_GF_Assets_v1TweenY', 'Mario_Phase2_GF_Assets_v1', 250, 0.5, 'linear'); 														
	   end
   end
end
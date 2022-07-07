function onCreate()

	makeAnimatedLuaSprite('fondo', 'mario/Wario/fondo', -265, -12);
    addAnimationByPrefix('fondo', 'fondo', 'fondo', 24, true);  
    objectPlayAnimation('fondo', 'fondo', true)
    scaleObject('fondo', 2 , 2)  
    addLuaSprite('fondo', false);

    makeAnimatedLuaSprite('cuerpo1', 'mario/Wario/cuerpo1', 450, 713);
    addAnimationByPrefix('cuerpo1', 'cuerpo1', 'cuerpo1', 24, true);  
    objectPlayAnimation('cuerpo1', 'cuerpo1', true)
    scaleObject('cuerpo1', 1 , 1)  
    addLuaSprite('cuerpo1', false);

	makeAnimatedLuaSprite('cuerpo2', 'mario/Wario/cuerpo2', 378, 660);
    addAnimationByPrefix('cuerpo2', 'cuerpo2', 'cuerpo2', 24, true);  
    objectPlayAnimation('cuerpo2', 'cuerpo2', true)
    scaleObject('cuerpo2', 1 , 1)  
    addLuaSprite('cuerpo2', true);

    makeAnimatedLuaSprite('overlay', 'mario/Wario/overlay', 0, 0);
    addAnimationByPrefix('overlay', 'overlay', 'overlay', 24, true);  
    objectPlayAnimation('overlay', 'overlay', true)
    scaleObject('overlay', 1 , 1)  
    addLuaSprite('overlay', false);
    setObjectCamera('overlay', 'hud');	
    setProperty('overlay.visible', false);
end 

function onEvent(name,value1,value2)
if name == 'Triggers Otros' then 
    if value1 == '1' then
       setProperty('overlay.visible', true);
   end 

    if value1 == '2' then
            setProperty('overlay.visible', false);											
	   end
   end
end
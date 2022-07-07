function onCreate()

	makeLuaSprite('luigi1', 'mario/IHY/luigi1', -265, -12);
	addLuaSprite('luigi1', false);
    scaleObject('luigi1', 1, 1)  

    makeAnimatedLuaSprite('luigiantorcha', 'mario/IHY/luigiantorcha', -53, 60);
    addAnimationByPrefix('luigiantorcha', 'luigiantorcha', 'luigiantorcha', 24, true);  
    objectPlayAnimation('luigiantorcha', 'luigiantorcha', true)
    scaleObject('luigiantorcha', 1 , 1)  
    addLuaSprite('luigiantorcha', false);

    makeAnimatedLuaSprite('luigiantorcha2', 'mario/IHY/luigiantorcha2', 1154, 70);
    addAnimationByPrefix('luigiantorcha2', 'luigiantorcha2', 'luigiantorcha2', 24, true);  
    objectPlayAnimation('luigiantorcha2', 'luigiantorcha2', true)
    scaleObject('luigiantorcha2', 1 , 1)  
    addLuaSprite('luigiantorcha2', false);   

    makeAnimatedLuaSprite('boo', 'mario/IHY/boo', 1119,260);
    addAnimationByPrefix('boo', 'boo', 'boo', 24, true);  
    objectPlayAnimation('boo', 'boo', true)
    scaleObject('boo', 1 , 1)  
    addLuaSprite('boo', false);  
    setProperty('boo.visible', false);

    makeAnimatedLuaSprite('boo2', 'mario/IHY/boo2', 1238, 104);
    addAnimationByPrefix('boo2', 'boo2', 'boo2', 24, true);  
    objectPlayAnimation('boo2', 'boo2', true)
    scaleObject('boo2', 1 , 1)  
    addLuaSprite('boo2', false); 
    setProperty('boo2.visible', false);

    makeAnimatedLuaSprite('boo3', 'mario/IHY/boo3', -354, 180);
    addAnimationByPrefix('boo3', 'boo3', 'boo3', 24, true);  
    objectPlayAnimation('boo3', 'boo3', true)
    scaleObject('boo3', 1 , 1)  
    addLuaSprite('boo3', false);   
    setProperty('boo3.visible', false);
    setProperty('boo3.flipX', true);

	makeLuaSprite('luigi2', 'mario/IHY/luigi2', -738, -100);
	addLuaSprite('luigi2', false);
    scaleObject('luigi2', 1 , 1)  

    makeAnimatedLuaSprite('mario', 'mario/IHY/mario', 1238, 414);
    addAnimationByPrefix('mario', 'mario', 'mario', 24, true);  
    objectPlayAnimation('mario', 'mario', true)
    scaleObject('mario', 1.1 , 1.1) 
    addLuaSprite('mario', false);   
    setProperty('mario.visible', false);

    makeAnimatedLuaSprite('mario2', 'mario/IHY/mario2', -354, 414);
    addAnimationByPrefix('mario2', 'mario2', 'mario2', 24, true);  
    objectPlayAnimation('mario2', 'mario2', true)
    scaleObject('mario2', 1.1 , 1.1)  
    addLuaSprite('mario2', false);   
    setProperty('mario2.visible', false);

    makeAnimatedLuaSprite('luigifront', 'mario/IHY/luigifront', -50, 630);
    addAnimationByPrefix('luigifront', 'luigifront', 'luigifront', 24, true);  
    objectPlayAnimation('luigifront', 'luigifront', true)
    scaleObject('luigifront', 1 , 1)  
    setProperty('luigifront.visible', false);
    addLuaSprite('luigifront', true); 
    setObjectCamera('luigifront', 'other');	

end 

function onEvent(name,value1,value2)
	if name == 'IHY' then 
		if value1 == '0' then
      setProperty('luigifront.visible', false);

   end 
      if value1 == '1' then
      setProperty('luigifront.visible', true);

   end 
        if value1 == '2' then
        	setProperty('boo.visible', true);
        	setProperty('boo2.visible', true);
            setProperty('boo3.visible', true);													
	   end

	    if value1 == '3' then
		    setProperty('mario.visible', true);		
		    setProperty('mario2.visible', true);												
	   end

	   if value1 == 'arriba' then
		addLuaSprite('luigifront', false);
		objectPlayAnimation('luigifront', 'luigifront', true); 
		doTweenY('luigifrontTweenY', 'luigifront', 600, 0.5, 'linear'); 														
	   end

	   if value1 == 'arriba2' then
		addLuaSprite('luigifront', false);
		objectPlayAnimation('luigifront', 'luigifront', true); 
		doTweenY('luigifrontTweenY', 'luigifront', 575, 0.5, 'linear'); 														
	   end

	   if value1 == 'arriba3' then
		addLuaSprite('luigifront', false);
		objectPlayAnimation('luigifront', 'luigifront', true); 
		doTweenY('luigifrontTweenY', 'luigifront', 550, 0.5, 'linear'); 														
	   end

	   if value1 == 'arriba4' then
		addLuaSprite('luigifront', false);
		objectPlayAnimation('luigifront', 'luigifront', true); 
		doTweenY('luigifrontTweenY', 'luigifront', 525, 0.5, 'linear'); 														
	   end

	   if value1 == 'arriba5' then
		addLuaSprite('luigifront', false);
		objectPlayAnimation('luigifront', 'luigifront', true); 
		doTweenY('luigifrontTweenY', 'luigifront', 500, 0.5, 'linear'); 														
	   end	   

	   if value1 == 'arriba5.5' then
		addLuaSprite('luigifront', false);
		objectPlayAnimation('luigifront', 'luigifront', true); 
		doTweenY('luigifrontTweenY', 'luigifront', 485, 0.5, 'linear'); 														
	   end	   

	    if value1 == 'arriba6' then
		addLuaSprite('luigifront', false);
		objectPlayAnimation('luigifront', 'luigifront', true); 
		doTweenY('luigifrontTweenY', 'luigifront', 475, 0.5, 'linear'); 														
	   end	   

	   if value1 == 'abajo' then
		addLuaSprite('luigifront', false);
		objectPlayAnimation('luigifront', 'luigifront', true); 
		doTweenY('luigifrontTweenY', 'luigifront', 630, 0.5, 'linear'); 														
	   end
   end
end
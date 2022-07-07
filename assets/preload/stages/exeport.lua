function onCreate()


    makeLuaSprite('MXBC1', 'mario/MX/MXBC1', -700, -565);
    addLuaSprite('MXBC1', false);
    scaleObject('MXBC1', 1.4, 1.4)

    makeAnimatedLuaSprite('mont', 'mario/MX/mont', 743, 130);
    addAnimationByPrefix('mont', 'mont', 'mont', 24, true);  
    objectPlayAnimation('mont', 'mont', true)
    scaleObject('mont', 1 , 1)  
    addLuaSprite('mont', false);  

    makeAnimatedLuaSprite('cara', 'mario/MX/cara', 396, -240);
    addAnimationByPrefix('cara', 'cara', 'cara', 24, true);  
    objectPlayAnimation('cara', 'cara', true)
    scaleObject('cara', 1 , 1)  
    addLuaSprite('cara', false);   

    makeLuaSprite('MXBC2', 'mario/MX/MXBC2', -438, -500);
    addLuaSprite('MXBC2', false);
    scaleObject('MXBC2', 1.4, 1.4) 

    makeLuaSprite('luigi', 'mario/MX/luigi', 1401, 0);
    addLuaSprite('luigi', false);
    scaleObject('luigi', 1, 1)

    makeLuaSprite('tvscreen', 'mario/MX/tvscreen', 0, 0);
    addLuaSprite('tvscreen', true);
    scaleObject('tvscreen', 1, 1)
    setObjectCamera('tvscreen', 'hud');   

end 

function onEvent(name,value1,value2)
    if name == 'Triggers Otros' then 

      if value1 == '1' then
    makeAnimatedLuaSprite('emeequis', 'mario/MX/emeequis', 250, 0);
    addAnimationByPrefix('emeequis', 'emeequis', 'emeequis', 24, true);  
    objectPlayAnimation('emeequis', 'emeequis', true)
    scaleObject('emeequis', 1 , 1)  
    addLuaSprite('emeequis', false);  
    setObjectCamera('emeequis', 'hud'); 
   end 
   
   if value1 == '2' then
            doTweenAlpha('emeequisalpha', 'emeequis', 0, 3, 'linear')                                                                                                   
       end
   end
end
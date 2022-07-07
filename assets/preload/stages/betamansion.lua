function onCreate()

	makeAnimatedLuaSprite('RainLuigi', 'mario/LuigiBeta/RainLuigi', -465, -302);
    addAnimationByPrefix('RainLuigi', 'RainLuigi', 'RainLuigi', 24, true);  
    objectPlayAnimation('RainLuigi', 'RainLuigi', true)
    scaleObject('RainLuigi', 2 , 2)  
    addLuaSprite('RainLuigi', true);
    setProperty('RainLuigi.visible', false);

	makeAnimatedLuaSprite('Beta_BF_Hang', 'mario/LuigiBeta/Beta_BF_Hang', 0, 0);
    addAnimationByPrefix('Beta_BF_Hang', 'Beta_BF_Hang', 'Beta_BF_Hang', 24, true);  
    objectPlayAnimation('Beta_BF_Hang', 'Beta_BF_Hang', true)
    scaleObject('Beta_BF_Hang', 1 , 1)  
    addLuaSprite('Beta_BF_Hang', false);
    setObjectCamera('Beta_BF_Hang', 'other');
    setProperty('Beta_BF_Hang.visible', false);

	makeLuaSprite('Beta_Luigi_BG_Assets_1', 'mario/LuigiBeta/Beta_Luigi_BG_Assets_1', -465, -302);
	addLuaSprite('Beta_Luigi_BG_Assets_1', false);
    scaleObject('Beta_Luigi_BG_Assets_1', 1.2, 1.2)  

end 

function onEvent(name,value1,value2)
	if name == 'Triggers Otros' then 
      if value1 == 'lluvia' then
      setProperty('RainLuigi.visible', true);

      if value1 == 'OhNo' then
      setProperty('Beta_BF_Hang.visible', true);
      runTimer('si', 1)
      end 
   end
end

function onTimerCompleted(tag, loops, loopsleft)
        if tag == 'si' then
         setProperty('Beta_BF_Hang.visible', false);
       end
    end 
end
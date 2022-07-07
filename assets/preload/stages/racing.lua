function onCreate()

    makeLuaSprite('cielo', 'mario/Races/cielo', -200, -200);
    addLuaSprite('cielo', false);
    scaleObject('cielo', 1.2, 1.2) 

    makeLuaSprite('Race_Mario_BG3', 'mario/Races/Race_Mario_BG3', -200, -200);
    addLuaSprite('Race_Mario_BG3', false);
    scaleObject('Race_Mario_BG3', 1.2, 1.2)    

    makeAnimatedLuaSprite('Ground', 'mario/Races/Ground', -200, -200);
    addAnimationByPrefix('Ground', 'Ground', 'Ground', 24, true);  
    objectPlayAnimation('Ground', 'Ground', true)
    scaleObject('Ground', 1.2 , 1.2)  
    addLuaSprite('Ground', false); 

	  makeAnimatedLuaSprite('cajamk', 'mario/Races/cajamk', 580, -170);
    addAnimationByPrefix('cajamk', 'cajamk', 'cajamk', 24, true);  
    addAnimationByPrefix('cajamk', 'shell', 'cajamk shell', 24, true);  
    addAnimationByPrefix('cajamk', 'boo', 'cajamk ghost', 24, true); 
    addAnimationByPrefix('cajamk', 'bomba', 'cajamk bomb', 24, true); 
    addAnimationByPrefix('cajamk', 'random', 'cajamk random', 24, true); 
    objectPlayAnimation('cajamk', 'cajamk', true)
    setObjectCamera('cajamk', 'hud');
    scaleObject('cajamk', 1.2 , 1.2)  
    addLuaSprite('cajamk', false);
    setProperty('cajamk.visible', true);

end 

function onEvent(name,value1,value2)
if name == 'Triggers Racing' then 
    if value1 == '0' then
       doTweenX('dadTweenaX', 'dad', 0 , 0.7, 'linear');
    end
    if value1 == 'caja' then
       doTweenY('prmertubye', 'cajamk', 50 , 0.5, 'linear');                                 
    end    

    if value1 == 'caja2' then
        doTweenY('eltuinye', 'cajamk', -150 , 0.5, 'linear');                    
    end     

    if value1 == 'boo' then
       objectPlayAnimation('cajamk', 'boo', true)    
       playSound('si', 1);                          
       triggerEvent('Screen Shake', '0.05, 0.01', '0, 0');
    end          

    if value1 == 'shell' then
       objectPlayAnimation('cajamk', 'shell', true)    
       playSound('si', 1);                             
       triggerEvent('Screen Shake', '0.05, 0.01', '0, 0');    
    end  

    if value1 == 'bomba' then
       objectPlayAnimation('cajamk', 'bomba', true)   
       playSound('si', 1);          
       triggerEvent('Screen Shake', '0.05, 0.01', '0, 0');              
    end 

    if value1 == 'random' then
       objectPlayAnimation('cajamk', 'random', true)                           
     end                                        
   end
end

function onUpdate(elapsed)
 if curStep >= 0 then

    songPos = getSongPosition()

    local currentBeat = (songPos/1000)*(bpm/80)

    doTweenX(boyfriendTweenX, 'boyfriend', 800- -40*math.sin((currentBeat*0.50)*math.pi),0.001)
 end
end 

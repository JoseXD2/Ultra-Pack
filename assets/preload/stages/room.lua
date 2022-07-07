function onCreate()
    makeAnimatedLuaSprite('glitch','glitch',-500, -500);
    addAnimationByPrefix('glitch','idle','glitch idle',24,true);
    scaleObject('glitch', 2, 2);
    
   addLuaSprite('glitch',false);

	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
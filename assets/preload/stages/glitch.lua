function onCreate()  

    makeAnimatedLuaSprite('BG_Assets3', 'backgrounds/missingno/BG_Assets', -820, -190);
    addAnimationByPrefix('BG_Assets3', 'BG_Assets3', 'Bg Sky', 24, true);  
    objectPlayAnimation('BG_Assets3', 'BG_Assets3', true)
    scaleObject('BG_Assets3', 7.4, 7.4)  
    addLuaSprite('BG_Assets3', false);

    makeAnimatedLuaSprite('BG_Assets', 'backgrounds/missingno/BG_Assets', -820, -190);
    addAnimationByPrefix('BG_Assets', 'BG_Assets', 'Bg Ocean', 24, true);  
    objectPlayAnimation('BG_Assets', 'BG_Assets', true)
    scaleObject('BG_Assets', 7.4, 7.4)  
    addLuaSprite('BG_Assets', false);

    makeAnimatedLuaSprite('BG_Assets2', 'backgrounds/missingno/BG_Assets', -820, -190);
    addAnimationByPrefix('BG_Assets2', 'BG_Assets2', 'Bg Wave', 24, true);  
    objectPlayAnimation('BG_Assets2', 'BG_Assets2', true)
    scaleObject('BG_Assets2', 7.4, 7.4)  
    addLuaSprite('BG_Assets2', false);

doTweenAlpha('camHUD', 'camHUD', 0, 0.01, 'linear')  
setProperty('BG_Assets3.antialiasing', false)
setProperty('BG_Assets.antialiasing', false)
setProperty('BG_Assets2.antialiasing', false)
  
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
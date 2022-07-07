function onCreate()

makeLuaSprite('jaja', 'jaja', 1180, 450);
addLuaSprite('jaja', false);
scaleObject('jaja', 2.2, 2.2) 

makeLuaSprite('jaja2', 'jaja', -500, 1100);
addLuaSprite('jaja2', false);
scaleObject('jaja2', 2.2, 2.2)  

makeLuaSprite('Lost_silver_fog', 'backgrounds/feralisleep/Lost_silver_fog', -750, 1200);
addLuaSprite('Lost_silver_fog', true);
scaleObject('Lost_silver_fog', 1.5, 1)  
setProperty('Lost_silver_fog.alpha', 0.2)
doTweenAlpha('camHUD', 'camHUD', 0.8, 0.01, 'linear')  

end 

function onUpdate(elapsed)
setProperty('iconP2.y', getProperty('iconP2.height') +395)
setProperty('iconP1.y', getProperty('iconP1.height') +445)
end
function onEvent(name, value1, value2)
if name == "Asbel" then
if value1 == "jp" then
makeLuaSprite('pk', 'jumpscares/Pikachu', 0, 0);
scaleObject('pk', 1.2, 1.2)  
addLuaSprite('pk', true);
playSound('bobjumpscare');
triggerEvent('Screen Shake', '0.10, 0.10', '0.10, 0.10');
setObjectCamera('pk', 'other');
runTimer('wait', 0.5);
doTweenAngle('XD', 'camHUD', -3, 5, 'cubic');	
	end
end
end

function onTimerCompleted(tag, loops, loopsleft)
if tag == 'wait' then
doTweenAlpha('warr', 'pk', 0, 3, 'linear');
	end
end

function onTweenCompleted(tag)
if tag == 'warr' then
removeLuaSprite('pk', true);
elseif tag == 'XD' then
doTweenAngle('XD2', 'camHUD', 3, 5, 'cubic');	
elseif tag == 'XD2' then
doTweenAngle('XD', 'camHUD', -3, 5, 'cubic');	
	end
end
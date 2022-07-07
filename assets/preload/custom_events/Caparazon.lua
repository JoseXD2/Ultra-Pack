function onCreate()
	makeLuaSprite('redshell', 'redshell', -100, 600);
	setLuaSpriteScrollFactor('redshell', 0, 0);
	addLuaSprite('redshell', true);
	setObjectCamera('redshell', 'hud');	
end

-- Event notes hooks
function onEvent(name, value1, value2)
if name == "Caparazon" then
doTweenX('YASABESQUEES', 'redshell', 300 , 0.1, 'circOut');
setObjectCamera('redshell', 'hud');
setProperty('health', getProperty('health')-0.30);
cameraShake('camGame', 0.01, 0.2)
playSound('si', 1); 
	end
end

function onTweenCompleted(tag)
if tag == 'YASABESQUEES' then
        doTweenX('siuuu', 'redshell', -100, 0.3, 'circOut')
    end 
end     

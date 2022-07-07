function onCreatePost()
	precacheSound('cameraFlip')
end
function onEvent(name, value1, value2)
	if name == 'FlipCam' then
		if value1 == 'camgame' then
			camgame(value2)
		end
		if value1 == 'camhud' then
			camhud(value2)
		end
	end
end

function camgame(up_or_down)
	if up_or_down == 'down' then
		playSound('cameraFlip', 1, 'cum');
		doTweenAngle('lmao1', 'camGame', -30, 0.15, 'quadInOut');
		characterPlayAnim('bf', 'hurt');
		playsansanim()
		triggerEvent('Screen Shake', '0.1, 0.025');
	end
	if up_or_down == 'up' then
		playSound('cameraFlip', 1, 'cum1');
		doTweenAngle('lmao2', 'camGame', 210, 0.15, 'quadInOut');
		characterPlayAnim('bf', 'hurt');
		playsansanim()
		triggerEvent('Screen Shake', '0.1, 0.025');
	end
end
function camhud(up_or_down)
	if up_or_down == 'down' then
		playSound('cameraFlip', 1, 'cum2');
		doTweenAngle('lmao3', 'camHUD', -30, 0.15, 'quadInOut');
		characterPlayAnim('bf', 'hurt');
		playsansanim()
		triggerEvent('Screen Shake', '0.1, 0.025');
	end
	if up_or_down == 'up' then
		playSound('cameraFlip', 1, 'cum3');
		doTweenAngle('lmao4', 'camHUD', 210, 0.15, 'quadInOut');
		characterPlayAnim('bf', 'hurt');
		playsansanim()
		triggerEvent('Screen Shake', '0.1, 0.025');
	end
end

function playsansanim()
	local curchar2 = getProperty('dad.curCharacter')
	if
		curchar2 == 'sans' or
		curchar2 == 'sans-dark' or
		curchar2 == 'sans-mad' or
		curchar2 == 'sans-upset' or
		curchar2 == 'sans-worried' then
		characterPlayAnim('dad', 'swing_down');
	end
end

function onTweenCompleted(tag)
	if tag == 'lmao1' then
		doTweenAngle('lmao5', 'camGame', 0, 0.1, 'quadInOut');
	end
	if tag == 'lmao2' then
		doTweenAngle('lmao6', 'camGame', 180, 0.1, 'quadInOut');
	end
	if tag == 'lmao3' then
		doTweenAngle('lmao7', 'camHUD', 0, 0.1, 'quadInOut');
	end
	if tag == 'lmao4' then
		doTweenAngle('lmao8', 'camHUD', 180, 0.1, 'quadInOut');
	end
	
	if tag == 'lmao5' then
		setProperty('camGame.angle', 0)
	end
	if tag == 'lmao6' then
		setProperty('camGame.angle', 180)
	end
	if tag == 'lmao7' then
		setProperty('camHUD.angle', 0)
	end
	if tag == 'lmao8' then
		setProperty('camHUD.angle', 180)
	end
end
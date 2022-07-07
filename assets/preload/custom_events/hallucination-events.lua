function onCreate()
	precacheSound('cameraFlip');
end
function onStepHit()
	if curStep == 570 then
		flip_ALL();
		triggerEvent('Screen Shake', '3.6, 0.025', '3.6, 0.005');
		runTimer('hallu1', 3.6);
	end
	if curStep == 938 then
		doTweenZoom('zoomtween1', 'camera', getProperty('defaultCamZoom') + 0.6, 1.5, 'quadInOut');
	end
	if curStep == 950 then
		doTweenZoom('zoomtween2', 'camera', getProperty('defaultCamZoom'), 2, 'quadInOut');
	end
	if curStep == 1231 then
		doTweenZoom('zoomtween3', 'camera', getProperty('defaultCamZoom') + 0.6, 1.5, 'quadInOut');
	end
	if curStep == 1241 then
		flip_ALL();
		triggerEvent('Screen Shake', '3.6, 0.025', '3.6, 0.005');
		runTimer('hallu2', 3.6);
	end
	if curStep == 1243 then
		doTweenZoom('zoomtween4', 'camera', getProperty('defaultCamZoom'), 2, 'quadInOut');
	end
	if curStep == 1747 then
		doTweenZoom('zoomtween5', 'camera', getProperty('defaultCamZoom') + 0.6, 1.5, 'quadInOut');
	end
	if curStep == 1759 then
		doTweenZoom('zoomtween6', 'camera', getProperty('defaultCamZoom'), 2, 'quadInOut');
	end
	if curStep == 1877 then
		--runTimer('fadedad', 0.1);
		doTweenAlpha('papsfade', 'dad', 0, 2.25, 'linear');
		doTweenAlpha('papsfadeicon', 'iconV2P2', 0, 2.25, 'linear');
		for i = 0, getProperty('opponentStrums.length') - 1 do
			noteTweenAlpha('papsfadenote'..i, i, 0, 2.25, 'linear');
		end
		doTweenAlpha('papsfadelu', 'laneunderlayOpponent', 0, 2.25, 'linear');
		-- bye bye papyrus
	end
end

function flip_ALL()
	doTweenAngle('flipgame1', 'camGame', -20, 1, 'quadInOut');
	doTweenAngle('fliphud1', 'camHUD', 20, 1, 'quadInOut');
	runTimer('flipall1', 1);
	runTimer('flipall2', 3);
end
function onTimerCompleted(tag)
	if tag == 'flipall1' then
		doTweenAngle('flipgame2', 'camGame', 20, 2, 'quadInOut');
		doTweenAngle('fliphud2', 'camHUD', -20, 2, 'quadInOut');
	end
	if tag == 'flipall2' then
		doTweenAngle('flipgame3', 'camGame', 0, 1, 'quadInOut');
		doTweenAngle('fliphud3', 'camHUD', 0, 1, 'quadInOut');
	end
	if tag == 'hallu1' then
		if curStep >= 926 then
			doTweenAngle('flipgame4', 'camGame', 0, 1, 'quadInOut');
			doTweenAngle('fliphud4', 'camHUD', 0, 1, 'quadInOut');
		else
			flip_ALL();
			triggerEvent('Screen Shake', '3.6, 0.025', '3.6, 0.005');
			runTimer('hallu1', 0.00000001);
		end
	end
	if tag == 'hallu2' then
		if curStep >= 1728 then
			doTweenAngle('flipgame5', 'camGame', 0, 1, 'quadInOut');
			doTweenAngle('fliphud5', 'camHUD', 0, 1, 'quadInOut');
		else
			flip_ALL();
			triggerEvent('Screen Shake', '3.6, 0.025', '3.6, 0.005');
			runTimer('hallu2', 0.00000001);
		end
	end
	--[[if tag == 'fadedad' then
		setProperty('dad.alpha', getProperty('dad.alpha') - 0.01);
		--setProperty('iconP2.alpha', getProperty('iconP2.alpha') - 0.01);
		setProperty('iconV2P2.alpha', getProperty('iconP2.alpha') - 0.01);
		runTimer('fadedad', 0.00000001);
	end]]--
end

function onUpdate()
	local currentBeat = (getSongPosition() / 1000) * (bpm / 200);
	for i = 0, getProperty('playerStrums.length') do
		setPropertyFromGroup('playerStrums', i, 'y', defaultPlayerStrumY0 + 20 * math.cos(currentBeat + i * 8.25) * math.pi);
	end
	for i = 0, getProperty('opponentStrums.length') do
		setPropertyFromGroup('opponentStrums', i, 'y', defaultOpponentStrumY0 + 20 * math.cos(currentBeat + i * 8.25) * math.pi);
	end
end
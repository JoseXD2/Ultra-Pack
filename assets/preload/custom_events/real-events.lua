function onCreate()
	precacheImage('gasterBlaster');
	precacheSound('blaster_shoot');
	makeLuaSprite('bgdim', nil, 0, 0);
	makeGraphic('bgdim', 4000, 4000, '000000');
	screenCenter('bgdim', 'xy');
	setObjectCamera('bgdim', 'camhud');
	setProperty('bgdim.alpha', 0);
	addLuaSprite('bgdim', true);
	
	precacheImage('characters/sans-dark');
	precacheImage('characters/sans-mad');
end
local fuckstep = 0
function onStepHit()
	fuckstep = curStep
	if curStep == 240 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 368 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 423 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 503 then
		triggerEvent('FlipCam', 'camgame', 'up')
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 616 then
		triggerEvent('FlipCam', 'camgame', 'down')
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 687 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 752 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 880 then
		triggerEvent('FlipCam', 'camgame', 'down')
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1232 then
		doTweenAlpha('blackthingappear', 'bgdim', 1, 0.15);
	end
	if curStep == 1247 then
		triggerEvent('FlipCam', 'camgame', 'up')
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1248 then
		doTweenAlpha('blackthingdisappear', 'bgdim', 0, 0.15);
	end
	if curStep == 1264 then
		triggerEvent('Change Character', 'dad', 'sans-dark');
	end
	if curStep == 1391 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1519 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1648 then
		triggerEvent('Screen Shake', '7, 0.025', '7, 0.005');
	end
	if curStep == 1768 then
		triggerEvent('Screen Shake', '5, 0.03', '5, 0.01');
		doTweenAlpha('blackthingappear', 'bgdim', 1, 0.15);
	end
	if curStep == 1769 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 1815 then
		triggerEvent('Change Character', 'dad', 'sans-mad');
		setProperty('papyrus.visible', true);
	end
	if curStep == 1821 then
		setProperty('bgdim.alpha', 0);
		doTweenZoom('zoomtween', 'camera', getProperty('defaultCamZoom') + 0.65, 0.5, 'quadInOut');
	end
	if curStep == 1825 then
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') + 0.65);
	end
	if curStep == 1835 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1843 then
		doTweenZoom('zoomtween', 'camera', getProperty('defaultCamZoom') - 0.65, 0.5, 'quadInOut');
	end
	if curStep == 1847 then
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') - 0.65);
	end
	if curStep == 2220 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 2348 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
end

function onUpdate()
	if getProperty('papyrus.visible') then
		if getProperty('papyrus.alpha') < 0.7 then
			setProperty('papyrus.alpha', getProperty('papyrus.alpha') + 0.01);
		end
	else
		if getProperty('papyrus.alpha') > 0 then
			setProperty('papyrus.alpha', getProperty('papyrus.alpha') - 0.01);
		end
	end

	if fuckstep < 249 then
		doMoveShit(150, 10, 5.25)
	end
	if fuckstep > 238 and fuckstep < 752 then
		doMoveShit(30, 10, 5.25)
	end
	if fuckstep > 751 and fuckstep < 1264 then
		doMoveShit(150, 10, 5.25)
	end
	if fuckstep > 1263 and fuckstep < 1769 then
		doMoveShit(20, 10, 20.25)
	end
	if fuckstep > 1835 then
		doMoveShit(20, 15, 1.25)
	end
end
function doMoveShit(bpmdecimal, strumoffset, beatshitidk)
	local currentBeat = (getSongPosition() / 1000) * (bpm / bpmdecimal);
	for i = 0, getProperty('playerStrums.length') do
		setPropertyFromGroup('playerStrums', i, 'y', defaultPlayerStrumY0 + strumoffset * math.cos((currentBeat + i * beatshitidk) * math.pi));
	end
	for i = 0, getProperty('opponentStrums.length') do
		setPropertyFromGroup('opponentStrums', i, 'y', defaultOpponentStrumY0 + strumoffset * math.cos((currentBeat + i * beatshitidk) * math.pi));
	end
end
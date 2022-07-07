function onStepHit()
	if curStep == 319 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 740 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 880 then
		setProperty('papyrus.visible', true);
	end
	if curStep == 1154 then
		setProperty('papyrus.visible', false);
	end
	if curStep == 1160 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 1444 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 1724 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 2003 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 2148 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 2288 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
end
function onUpdate()
	if getProperty('papyrus.visible') then
		if getProperty('papyrus.alpha') < 0.4 then
			setProperty('papyrus.alpha', getProperty('papyrus.alpha') + 0.01);
		end
	else
		if getProperty('papyrus.alpha') > 0 then
			setProperty('papyrus.alpha', getProperty('papyrus.alpha') - 0.01);
		end
	end
end
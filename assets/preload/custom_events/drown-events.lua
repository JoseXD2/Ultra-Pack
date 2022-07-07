function onStepHit()
	if curStep == 252 then
		doTweenZoom('zoomtween', 'camera', getProperty('defaultCamZoom') + 0.55, 1, 'quadInOut');
	end
	if curStep == 260 then
		doTweenZoom('zoomtweenend', 'camera', getProperty('defaultCamZoom'), 2, 'quadInOut');
	end
	if curStep == 269 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 399 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 528 then
		doTweenZoom('zoomtween_', 'camera', getProperty('defaultCamZoom') + 0.55, 15, 'quadInOut');
	end
	if curStep == 648 then
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') + 0.55);
	end
	if curStep == 656 then
		doTweenZoom('zoomtweenend_', 'camera', getProperty('defaultCamZoom') - 0.55, 15, 'quadInOut');
	end
	if curStep == 776 then
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') - 0.55);
	end
	if curStep == 1040 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 1166 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
end
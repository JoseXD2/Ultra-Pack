function onStepHit()
	if curStep == 442 then
		triggerEvent('FlipCam', 'camgame', 'up')
		triggerEvent('Change Scroll Speed', '1.2');
	end
	if curStep == 635 then
		triggerEvent('FlipCam', 'camgame', 'down')
		triggerEvent('Change Scroll Speed', '1');
	end
	if curStep == 894 then
		doTweenZoom('zoomtween', 'camera', getProperty('defaultCamZoom') + 0.55, 4, 'quadInOut');
	end
	if curStep == 926 then
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') + 0.55);
	end
	if curStep == 1085 then
		doTweenZoom('zoomtweenend', 'camera', getProperty('defaultCamZoom') - 0.55, 8, 'quadInOut');
	end
	if curStep == 1143 then
		triggerEvent('FlipCam', 'camgame', 'up')
		triggerEvent('Change Scroll Speed', '1.2');
	end
	if curStep == 1149 then
		setProperty('defaultCamZoom', getProperty('defaultCamZoom') - 0.55);
	end
	if curStep == 1337 then
		triggerEvent('FlipCam', 'camgame', 'down')
		triggerEvent('Change Scroll Speed', '1');
	end
end
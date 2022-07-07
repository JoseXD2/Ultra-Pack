function onCreate()
	makeLuaSprite('miss', 'miss', 0, 0);
	screenCenter('miss', 'xy');
	setProperty('miss.alpha', 0);
	addLuaSprite('miss', true);

	makeLuaSprite('hp20', '-20', 0, 0);
	screenCenter('hp20', 'xy');
	setProperty('hp20.alpha', 0);
	addLuaSprite('hp20', true);

	makeLuaSprite('attack', 'attack', 0, 0);
	screenCenter('attack', 'xy');
	setProperty('attack.alpha', 0);
	addLuaSprite('attack', true);
end
function onTimerCompleted(tag)
	if tag == 'dis_hp20' then
		setProperty('hp20.alpha', 0);
	end
	if tag == 'dis_miss' then
		setProperty('miss.alpha', 0);
	end
end
function onStepHit()
	if curStep == 114 then
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 134 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 159 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 415 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 452 then
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 472 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 544 then
		triggerEvent('Screen Shake', '8.35, 0.01', '8.35, 0.01');
	end
	if curStep == 672 then
		triggerEvent('FlipCam', 'camgame', 'up')
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 681 then
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 701 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 816 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 828 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 840 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 859 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 868 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 877 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 884 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 895 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 928 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 991 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1118 then
		triggerEvent('FlipCam', 'camgame', 'up')
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1184 then
		triggerEvent('FlipCam', 'camgame', 'down')
		triggerEvent('GasterBlaster', 0.1)
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 1204 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 1216 then
		triggerEvent('GasterBlaster', 0.1)
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 1236 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 1247 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1280 then
		triggerEvent('GasterBlaster', 0.1)
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 1300 then
		setProperty('attack.alpha', 0);
	end
	if curStep == 1472 then
		doTweenAngle('lmaoxd1', 'camGame', -30, 0.15, 'quadInOut');
		triggerEvent('FlipCam', 'camhud', 'up')
		runTimer('dasxd1', 0.15);
		doTweenAngle('lmaoxd2', 'camGame', 180, 0.15, 'quadInOut');
	end
	if curStep == 1488 then
		doTweenAngle('lmaoxd3', 'camGame', 210, 0.15, 'quadInOut');
		triggerEvent('FlipCam', 'camhud', 'down')
		runTimer('dasxd2', 0.15);
		doTweenAngle('lmaoxd4', 'camGame', 0, 0.15, 'quadInOut');
	end
	if curStep == 1496 then
		doTweenAngle('lmaoxd5', 'camGame', -30, 0.15, 'quadInOut');
		triggerEvent('FlipCam', 'camhud', 'up')
		runTimer('dasxd3', 0.15);
		doTweenAngle('lmaoxd6', 'camGame', 180, 0.15, 'quadInOut');
	end
	if curStep == 1504 then
		doTweenAngle('lmaoxd7', 'camGame', 0, 0.15, 'quadInOut');
		triggerEvent('FlipCam', 'camhud', 'down')
		runTimer('dasxd4', 0.15);
		doTweenAngle('lmaoxd8', 'camGame', 0, 0.15, 'quadInOut');
	end
	if curStep == 1519 then
		doTweenAngle('lmaoxd9', 'camGame', -30, 0.15, 'quadInOut');
		triggerEvent('FlipCam', 'camhud', 'up')
		runTimer('dasxd5', 0.15);
		doTweenAngle('lmaoxd10', 'camGame', 180, 0.15, 'quadInOut');
	end
	if curStep == 1517 then
		doTweenAngle('lmaoxd11', 'camGame', 0, 0.15, 'quadInOut');
		triggerEvent('FlipCam', 'camhud', 'down')
		runTimer('dasxd6', 0.15);
		doTweenAngle('lmaoxd12', 'camGame', 0, 0.15, 'quadInOut');
	end
	if curStep == 1532 then
		doTweenAngle('lmaoxd13', 'camGame', -30, 0.15, 'quadInOut');
		triggerEvent('FlipCam', 'camhud', 'up')
		runTimer('dasxd7', 0.15);
		doTweenAngle('lmaoxd14', 'camGame', 180, 0.15, 'quadInOut');
	end
	if curStep == 1532 then
		triggerEvent('FlipCam', 'camhud', 'down')
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 1526 then
		triggerEvent('FlipCam', 'camhud', 'down')
	end
	if curStep == 1600 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 1632 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 1657 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 1664 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 1672 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 1678 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1680 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 1684 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 1688 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 1692 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 1696 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1711 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1728 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1744 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1776 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1791 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 1824 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1887 then
		triggerEvent('FlipCam', 'camgame', 'up')
	end
	if curStep == 1903 then
		triggerEvent('GasterBlaster', 0.1)
	end
	if curStep == 1951 then
		triggerEvent('FlipCam', 'camgame', 'down')
	end
	if curStep == 2080 then
		setProperty('attack.alpha', 1);
		playSound('warning', 1, 'warn');
	end
	if curStep == 2100 then
		setProperty('attack.alpha', 0);
	end
end

function onUpdate()
	if keyJustPressed('space') then
		if getProperty('attack.alpha') == 1 then
			setProperty('attack.alpha', 0);
			triggerEvent('Play Animation', 'slash', 'bf');

			triggerEvent('Screen Shake', '0.35, 0.01', '0.35, 0.01');
			setProperty('health', 2);
			playSound('slash_effect', 1, 'slash');
			setProperty('hp20.alpha', 1);
			runTimer('dis_hp20', 1);
		else
			triggerEvent('Play Animation', 'slash', 'bf');
			
			setProperty('miss.alpha', 1);
			runTimer('dis_miss', 1);
		end
	end
end
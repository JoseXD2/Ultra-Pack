function onCreate()
	makeLuaSprite('bg', 'waterfallBG', -600, -750);
	scaleObject('bg', 1, 1.25);
	addLuaSprite('bg', false);
	
	makeLuaText('watermark', "Recreation By Guayo", 0, -2, 667); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark',18);
    addLuaText('watermark');

	if songName == 'Red Megalovania' then
		makeAnimatedLuaSprite('papyrus', 'characters/paps', -550, -300);
		addLuaSprite('papyrus', false);
		setProperty('papyrus.alpha', 0.001);
		setProperty('papyrus.visible', false);
		addAnimationByPrefix('papyrus', 'idle', 'Pap idle', 24);
		precacheImage('characters/paps');
		runTimer('papsdisable', 0.001);
	end

	if songName == 'Red Megalovania' then
		addLuaScript('things/redm-events');
	end
	if songName == 'Drowning' then
		addLuaScript('things/drown-events');
	end
	
	addLuaScript('things/HealthIconV2');

	addLuaScript('custom_events/FlipCam') -- lol it needed addLuaScript
end
function onTimerCompleted(tag)
	if tag == 'papsdisable' then
		setProperty('papyrus.alpha', 0);
	end
end
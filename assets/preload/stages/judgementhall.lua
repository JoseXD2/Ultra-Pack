function onCreate()
	makeLuaSprite('bg', 'hall', -800, -700);
	scaleObject('bg', 1.25, 1.25);
	addLuaSprite('bg', false);

	makeLuaSprite('ill', 'illumination', -800, -700);
	scaleObject('ill', 1.25, 1.25);
	addLuaSprite('ill', false);
	
	makeLuaText('watermark', "Recreation By Guayo", 0, -2, 667); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark',18);
    addLuaText('watermark');

	if songName == 'Reality Check' then
		makeAnimatedLuaSprite('papyrus', 'characters/paps', -650, -300);
		addLuaSprite('papyrus', false);
		setProperty('papyrus.alpha', 0);
		setProperty('papyrus.visible', false);
		addAnimationByPrefix('papyrus', 'idle', 'Pap idle', 24);
		precacheImage('characters/paps');
	end

	if songName == 'Psychotic Breakdown' then
		addLuaScript('things/psych-events');
	end
	if songName == 'D.I.E' then
		addLuaScript('things/dead-events');
	end
	if songName == 'Anthropophobia' then
		addLuaScript('things/scary-events');
	end
	if songName == 'Reality Check' then
		addLuaScript('things/real-events');
	end

	addLuaScript('custom_events/GasterBlaster')
	addLuaScript('custom_events/FlipCam') -- lol it needed addLuaScript
 	addLuaScript('things/HealthIconV2');
end
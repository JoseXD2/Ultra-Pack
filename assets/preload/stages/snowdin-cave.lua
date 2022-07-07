function onCreate()
	makeLuaSprite('bg', 'snowdin-cave', -450, -200);
	scaleObject('bg', 1, 1);
	addLuaSprite('bg', false);
	
	makeLuaText('watermark', "Recreation By Guayo", 0, -2, 667); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark',18);
    addLuaText('watermark');

	if songName == 'The Murderer' then
		addLuaScript('things/murd-events');
	end
	
	addLuaScript('things/HealthIconV2');

	addLuaScript('custom_events/FlipCam') -- lol it needed addLuaScript
end
function onCreatePost()
	if songName == 'Wounded Shooting' then
		setProperty('gf.visible', false);
	end
end
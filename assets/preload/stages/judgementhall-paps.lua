function onCreate()
	makeLuaSprite('bg', 'hall-paps', -800, -700);
	scaleObject('bg', 1.25, 1.25);
	addLuaSprite('bg', false);
	
	makeLuaText('watermark', "Recreation By Guayo", 0, -2, 667); -- You can edit the created by Prisma Text just dont change anything else
    setTextSize('watermark',18);
    addLuaText('watermark');

	makeLuaSprite('ill', 'illumination', -800, -700);
	scaleObject('ill', 1.25, 1.25);
	addLuaSprite('ill', false);

	addLuaScript('things/hallucination-events');
	addLuaScript('things/HealthIconV2');
end
function onCreatePost()
	if getProperty('dad.curCharacter') == 'papyrus' then
		setProperty('dad.alpha', 0.8);
	end
end
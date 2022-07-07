function onCreate()

	makeLuaSprite('BG1Clouds', 'backgrounds/bygone/BG1 Clouds', -1750, -1000);
	setScrollFactor('BG1Clouds', 1, 1);
	scaleObject('BG1Clouds', 6, 6);
	addLuaSprite('BG1Clouds', false);

	makeLuaSprite('BG1Buildings', 'backgrounds/bygone/BG1 Buildings', -1750, -1000);
	setScrollFactor('BG1Buildings', 1, 1);
	scaleObject('BG1Buildings', 6, 6);
	addLuaSprite('BG1Buildings', false);	

	makeLuaSprite('Bridge', 'backgrounds/bygone/Bridge', -600, -500);
	setScrollFactor('Bridge', 1, 1);
	scaleObject('Bridge', 4, 4);
	addLuaSprite('Bridge', true);

	makeLuaSprite('what', 'what', 0, 0);
	setLuaSpriteScrollFactor('what', 0, 0);
	addLuaSprite('what', true);
	setObjectCamera('what', 'other');	

end

function onEvent(name,value1,value2)
if name == 'Asbel' then 
if value1 == 'xd2' then 	
setProperty('gf.alpha', 0);	
noteTweenX("NoteMove1", 0, -1000, 0.01, cubeInOut)
noteTweenX("NoteMove2", 1, -1000, 0.01, cubeInOut)
noteTweenX("NoteMove3", 2, -1000, 0.01, cubeInOut)
noteTweenX("NoteMove4", 3, -1000, 0.01, cubeInOut)
noteTweenX('uwu0', 4, 415, 0.01, 'quartInOut')
noteTweenX('uwu1', 5, 525, 0.01, 'quartInOut')
noteTweenX('uwu2', 6, 635, 0.01, 'quartInOut')
noteTweenX('uwu3', 7, 745, 0.01, 'quartInOut')	
doTweenAlpha('whatss', 'what', 0, 1, 'linear');	
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)
end
if value1 == 'xd' then
doTweenColor('Bridge', 'Bridge', '5C5C5C', 5, 'linear');
doTweenColor('BG1Buildings', 'BG1Buildings', '5C5C5C', 5, 'linear');
doTweenColor('BG1Clouds', 'BG1Clouds', '5C5C5C', 5, 'linear');
doTweenColor('boyfriend', 'boyfriend', '000000', 80, 'linear');
doTweenAlpha('gf', 'gf', 1, 1, 'linear');	
end
if value1 == 'xdd' then 	
doTweenColor('boyfriend', 'boyfriend', 'FFFFFF', 1, 'linear');	
doTweenAlpha('gf', 'gf', 0, 1, 'linear');	
end
end
end
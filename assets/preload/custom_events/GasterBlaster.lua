function onCreatePost()
	makeAnimatedLuaSprite('gb', 'gasterBlaster', -600, 250)
	setObjectCamera('gb', 'camhud')
	setGraphicSize('gb', getProperty('gb.width') * 0.7, 0)
	addLuaSprite('gb', true)
	setProperty('gb.alpha', 0.001)
	addAnimationByPrefix('gb', 'shoot', 'shoot', 24, false)
	runTimer('sos', 0.55)

	precacheSound('blaster_shoot')

	if downscroll then
		setProperty('gb.y', getProperty('gb.y') - 560);
	end
end
function onTimerCompleted(tag)
	if tag == 'sos' then
		setProperty('gb.alpha', 1)
	end
end
function onEvent(name, value1, value2)
	if name == 'GasterBlaster' then
		objectPlayAnimation('gb', 'shoot');
		playSound('blaster_shoot', 1, 'shoot');
		setHealth(value1);
	end
end
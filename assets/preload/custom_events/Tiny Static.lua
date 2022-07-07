function onEvent(name)
	if name == 'Tiny Static' then
		makeAnimatedLuaSprite('tinystatic', 'exe_shit/screenstatic', -350, -100);
		luaSpriteAddAnimationByPrefix('tinystatic', 'hello_there', 'screenSTATIC' , 24, true)
		scaleLuaSprite('tinystatic', 1.5, 1.5)
		addLuaSprite('tinystatic', true)
		setObjectCamera('tinystatic', 'game');
		runTimer('remove', 0.2);
	end
end

function onTimerCompleted(tag, loops, loopsleft)
    if tag == 'remove' then
		removeLuaSprite('tinystatic', false);
    end
end

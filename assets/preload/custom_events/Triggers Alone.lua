function onCreate()
	makeLuaSprite('flash', 'flash', 0, 0);
	setLuaSpriteScrollFactor('flash', 0, 0);
	setProperty('flash.alpha', 0.0001);
	addLuaSprite('flash', true);
	setObjectCamera('flash', 'hud');	
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "Triggers Alone" then
		setProperty('flash.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'flash', 0, 1, 'linear');
			setObjectCamera('flash', 'hud');
	end
end
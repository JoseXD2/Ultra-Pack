function onCreate()
	makeLuaSprite('flashROJO', 'flashROJO', 0, 0);
	setLuaSpriteScrollFactor('flashROJO', 0, 0);
	setProperty('flashROJO.alpha', 0.0001);
	addLuaSprite('flashROJO', true);
	setObjectCamera('flashROJO', 'hud');	
end

-- Event notes hooks
function onEvent(name, value1, value2)
	if name == "FlashROJO" then
		setProperty('flashROJO.alpha', 1);
		doTweenAlpha('tweenCutOffAlpha', 'flashROJO', 0, 0.5, 'linear');
			setObjectCamera('flashROJO', 'hud');
	end
end
function onCreate()
	-- background shit
	makeLuaSprite('forest', 'forest', -400, -150);
        scaleLuaSprite('forest', 0.9, 0.9);
	setLuaSpriteScrollFactor('forest', 0.9, 0.9);
        addLuaSprite('forest', false);

        makeAnimatedLuaSprite('others','others',-200,620)
        addAnimationByPrefix('others','oters','others',24,true)
        addLuaSprite('others', false)

	setProperty('others.visible', false)
end

function onBeatHit()
    objectPlayAnimation('others','others',false)

end

function onEvent(name,value1,value2)
	if name == 'Play Animation' then 
		
		if value1 == 'summon' then
			setProperty('others.visible', true);

		end
	end
end
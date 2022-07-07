function onCreate()
makeAnimatedLuaSprite('animatedicon', 'icons/Hypno2 Health Icon', getProperty('iconP2.x'), getProperty('iconP2.y'))
addAnimationByPrefix('animatedicon', 'normal', 'Hypno2 Icon', 35, true)
addAnimationByPrefix('animatedicon', 'losing', 'Hypno2 Icon', 35, true)
addAnimationByPrefix('animatedicon', 'winning', 'Hypno2 Icon', 35, true)
setScrollFactor('animatedicon', 0, 1)
setObjectCamera('animatedicon', 'other') 
addLuaSprite('animatedicon', false)
objectPlayAnimation('animatedicon', 'normal', false)	
end


function onUpdate(elapsed)
	if dadName == 'hypno-two' then
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'normal', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon', 'normal', false)
		else
			objectPlayAnimation('animatedicon', 'normal', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP2.x'))
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y') - 10)
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))
end
function onCreate()
makeAnimatedLuaSprite('animatedicon', 'icons/icon-jigglypuff', getProperty('iconP2.x'), getProperty('iconP2.y'))
addAnimationByPrefix('animatedicon', 'normal', 'win', 35, true)
addAnimationByPrefix('animatedicon', 'losing', 'lose', 35, true)
addAnimationByPrefix('animatedicon', 'winning', 'win', 35, true)
setScrollFactor('animatedicon', 0, 1)
setObjectCamera('animatedicon', 'other') 
addLuaSprite('animatedicon', false)
objectPlayAnimation('animatedicon', 'normal', false)	

makeAnimatedLuaSprite('Estatica papu', 'Estatica papu', -665, -12);
addAnimationByPrefix('Estatica papu', 'Estatica papu', 'Estatica papu', 24, true);  
objectPlayAnimation('Estatica papu', 'Estatica papu', true)
scaleObject('Estatica papu', 3 , 3)  
addLuaSprite('Estatica papu', false);

makeLuaSprite('Lost_silver_ground2', 'backgrounds/feralisleep/Lost_silver_ground2', -800, 790);
addLuaSprite('Lost_silver_ground2', false);
scaleObject('Lost_silver_ground2', 1, 1)  

   makeLuaSprite('difum', 'difum', 0, 0);
   scaleObject('difum', 1, 1)  
   addLuaSprite('difum', false);
   setObjectCamera('difum', 'other');	

end

function onUpdate(elapsed)
	if dadName == 'edit' then
		setProperty('iconP2.alpha', 0)
		if getProperty('health') > 1.6 then
			objectPlayAnimation('animatedicon', 'losing', false)
		elseif getProperty('health') < 0.4 then
			objectPlayAnimation('animatedicon', 'losing', false)
		else
			objectPlayAnimation('animatedicon', 'normal', false)
		end
	end
	setProperty('camOther.zoom', getProperty('camHUD.zoom'))
	setProperty('animatedicon.x', getProperty('iconP2.x'))
	setProperty('animatedicon.angle', getProperty('iconP2.angle'))
	setProperty('animatedicon.y', getProperty('iconP2.y') - 45)
	setProperty('animatedicon.scale.x', getProperty('iconP2.scale.x'))
	setProperty('animatedicon.scale.y', getProperty('iconP2.scale.y'))
end
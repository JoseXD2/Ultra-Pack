efectosinnecesarios = true

function onCreate()
makeAnimatedLuaSprite('animatedicon', 'icons/Hypno2 Health Icon', getProperty('iconP2.x'), getProperty('iconP2.y'))
addAnimationByPrefix('animatedicon', 'normal', 'Hypno2 Icon', 35, true)
addAnimationByPrefix('animatedicon', 'losing', 'Hypno2 Icon', 35, true)
addAnimationByPrefix('animatedicon', 'winning', 'Hypno2 Icon', 35, true)
setScrollFactor('animatedicon', 0, 1)
setObjectCamera('animatedicon', 'other') 
addLuaSprite('animatedicon', false)
objectPlayAnimation('animatedicon', 'normal', false)	

makeLuaSprite('Overlay', 'backgrounds/alley/Overlay', -90, -600);
setScrollFactor('Overlay', 1, 1);
scaleObject('Overlay', 1.5, 1.5);
addLuaSprite('Overlay', true);
setProperty('dad.alpha', 0);
setProperty('animatedicon.alpha', 0);
setProperty("camGame.zoom", 1.1) 
setProperty('defaultCamZoom', 1.1) 
end

function onEvent(name, value1, value2)
if name == 'Asbel' then
if value1 == 'Grr' then
efectosinnecesarios = false
setProperty('defaultCamZoom', 1) 
setProperty("camGame.zoom",1) 	
setProperty('dad.alpha', 1);
doTweenAlpha('animatedicon', 'animatedicon', 1, 1, 'linear');	
end
if value1 == 'Dame' then
doTweenAlpha('Overlay', 'Overlay', 0, 1, 'linear');	
end
if value1 == 'Agua potable' then
setProperty('defaultCamZoom', 0.7) 
setProperty("camGame.zoom",0.7) 
end
end
end

function goodNoteHit()
if efectosinnecesarios == true then	
    health = getProperty('health')
    setProperty('health', health+ 0.014);
	if(getProperty('health') > 1)then
		setProperty('health', 1);
	end
end
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
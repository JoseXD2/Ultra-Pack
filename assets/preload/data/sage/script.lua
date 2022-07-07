function onCreate()
    precacheImage('v/tan/lmao/fuck')
    makeAnimatedLuaSprite('padfuckingbrokesad', 'v/tan/lmao/fuck', 0, 0)
    addAnimationByPrefix('padfuckingbrokesad', 'sadness', 'vrage_ffff',24,false)
end
local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode and not seenCutscene then --Block the first countdown
		startVideo('jomama');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
function onBeatHit()
    if curBeat == 415 then
        setProperty('dad.alpha', 0)
        setProperty('padfuckingbrokesad.x', getProperty('dad.x'))
        setProperty('padfuckingbrokesad.y', getProperty('dad.y'))
        addLuaSprite('padfuckingbrokesad', true)
        objectPlayAnimation('padfuckingbrokesad', 'sadness')
    end

end
function onUpdate()
    if getProperty('padfuckingbrokesad.animation.curAnim.finished') == true and getProperty('padfuckingbrokesad.animation.curAnim.name') == 'sadness' then
        removeLuaSprite('padfuckingbrokesad', true)
        setProperty('dad.alpha',1)
    end
end
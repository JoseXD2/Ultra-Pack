local allowCountdown = false
function onStartCountdown()
	if not allowCountdown and isStoryMode then --Block the first countdown
		startVideo('intro');
		allowCountdown = true;
		return Function_Stop;
	end
	return Function_Continue;
end
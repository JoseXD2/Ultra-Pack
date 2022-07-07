local startedAnim = false;
local didEvent = false;

function onEvent(name,value1,value2)
	if name == 'Do Trigger Anim' then
		setProperty('dad.alpha', 0);
		setProperty('flipped-out.visible', true);
		setProperty('camZooming', false);
		objectPlayAnimation('flipped-out', 'doThing');
		startedAnim = true;
		didEvent = true;
		doTweenAlpha('blackalpha', 'theblack', 0.7, 10, 'linear');
		doTweenZoom('camera', 'camGame', 1, 20, 'linear');
		--debugPrint('Event triggered: ', name, duration, targetAlpha);
	end
end

function onUpdate()
	if getProperty('flipped-out.animation.curAnim.finished') and startedAnim == true then
		setProperty('dad.alpha', 1);
		setProperty('flipped-out.visible', false);
		startedAnim = false;
	end
end
local canHitPend = false;
local hitPend = false;
local skippedFirst = false;
local trance = 0;
local pendulumDrain = true;
local canKill = true;

local whiteHand = false;

local psyshockCool = 80; --initial, change as you please, 80
local psyshockMin = 60 --lowest random number, 60
local psyshockMax = 90 --highest random number, 90

local keyboardTimer = 8;

local pendSpeed = 0;

-- for the mentally ill
local HellMode = false; --you know what this does.
--

function onCreatePost()
    makeAnimatedLuaSprite('key_space', 'MobileGame', 1000, 488);
    addAnimationByPrefix('key_space', 'idle', 'Dodge Available instance ', 24, true);
    addAnimationByPrefix('key_space', 'press', 'Dodge not Avaiblefze instance ', 24, true);
    addLuaSprite('key_space', true);
    setObjectCamera('key_space', 'hud')
    objectPlayAnimation('key_space', 'idle', true);
    setPropertyFromClass('flixel.FlxG', 'mouse.visible', true);
    scaleObject('key_space', 0.9, 0.9);
    
	if HellMode then
		pendSpeed = stepCrochet*0.002;
	else
		pendSpeed = stepCrochet*0.004;
	end

	makeAnimatedLuaSprite('pendulum2', 'pendulum/Pendelum_Phase2', 0, 0);
	addAnimationByPrefix('pendulum2', 'idle', 'Pendelum Phase 2', 24, true);
	setObjectCamera('pendulum2', 'camHUD');
	setProperty('pendulum2.origin.x', 65);
	setProperty('pendulum2.origin.y', 0);
	screenCenter('pendulum2', 'x');
	addLuaSprite('pendulum2');

	makeAnimatedLuaSprite('pendulumShadow', 'pendulum/Pendelum_Phase2', 0, 0);
	addAnimationByPrefix('pendulumShadow', 'idle', 'Pendelum Phase 2', 24, true);
	setObjectCamera('pendulumShadow', 'camHUD');
	setProperty('pendulumShadow.origin.x', 65);
	setProperty('pendulumShadow.origin.y', 0);
	setProperty('pendulumShadow.visible', false);
	screenCenter('pendulumShadow', 'x');
	addLuaSprite('pendulumShadow');

	makeAnimatedLuaSprite('static', 'pendulum/StaticHypno', 0, 0);
	if flashingLights then
		addAnimationByPrefix('static', 'idle', 'StaticHypno', 24, true);
	else
		addAnimationByPrefix('static', 'idle', 'StaticHypno', 0, true);
	end
	setObjectCamera('static', 'camHUD');
	setGraphicSize('static', screenWidth, screenHeight);
	screenCenter('static');
	setProperty('static.alpha', 1);
	addLuaSprite('static');

if not HellMode then

	makeAnimatedLuaSprite('keyboard', 'pendulum/Extras');
	addAnimationByIndices('keyboard', 'press', 'Spacebar', '1, 2, 3, 4, 5, 6, 7, 8, 9, 10', 24);
	addAnimationByIndices('keyboard', 'idle', 'Spacebar', '11, 12, 13, 14 ,15 ,16 ,17, 18', 24);
	setObjectCamera('keyboard', 'camHUD');
	screenCenter('keyboard', 'x');
	setProperty('keyboard.y', 400);
	setProperty('keyboard.alpha', 0);
	addLuaSprite('keyboard');

end

	makeAnimatedLuaSprite('ZA_HANDO', 'pendulum/White_Hand');
	addAnimationByPrefix('ZA_HANDO', 'idle', 'White Hand FInished', 24, false);
	setProperty('ZA_HANDO.x', getProperty('boyfriendGroup.x')+220);
	setProperty('ZA_HANDO.y', getProperty('boyfriendGroup.y')-150);
	setProperty('ZA_HANDO.alpha', 0);
	addLuaSprite('ZA_HANDO');

	playSound('TranceStatic', 0, 'Sound');

end

function onSongStart()
	doTweenAlpha('keyboard', 'keyboard', 1, stepCrochet*0.002, 'quadOut');
	doTweenAngle('swing1', 'pendulum2', getProperty('pendulum2.angle')+30, pendSpeed, 'quadOut');
end

function onStepHit()
	if not HellMode then
		if curStep % 16 == 7 or curStep % 16 == 15 then
			canHitPend = true;
		elseif curStep % 16 == 10 or curStep % 16 == 2 then
			canHitPend = false;
			if not hitPend then
				if skippedFirst then
					losePendulum();
				else
					skippedFirst = true;
				end
			else
				hitPend = false;
			end
		elseif curStep % 16 == 8 or curStep % 16 == 0 then
			objectPlayAnimation('keyboard', 'press');
		elseif curStep % 16 == 9 or curStep % 16 == 1 then
			objectPlayAnimation('keyboard', 'idle');
			if keyboardTimer > 0 then
				keyboardTimer = keyboardTimer-1;
			else
				doTweenAlpha('keyboard', 'keyboard', 0, stepCrochet*0.004, 'linear');
			end
		end
	else
		if curStep % 8 == 7 or curStep % 8 == 3 then
			canHitPend = true;
		elseif curStep % 8 == 5 or curStep % 8 == 1 then
			canHitPend = false;
			if not hitPend then
				if skippedFirst then
				losePendulum();
				else
					skippedFirst = true;
				end
			else
				hitPend = false;
			end
		end
	end

	if psyshockCool <= 0 and psyshockCool > -1 then
		psyshock();

		psyshockCool = getRandomInt(psyshockMin, psyshockMax);
	else
		psyshockCool = psyshockCool - 1;
	end

	if not whiteHand then
		if getRandomInt(0, 10000) == 5 then
			setProperty('ZA_HANDO.alpha', 1);
			objectPlayAnimation('ZA_HANDO', 'idle');
			whiteHand = true;
		end
	end

end

function psyshock()
	if not pendulumDrain then
		trance = trance + (0.45 / 2);
	else
		trance = trance + (0.45 / 1); 
	end
	playSound('Psyshock', 1);
	if flashingLights then
		cameraFlash('camHUD', '0xFFAFC1', 1, true);
	end
end

function onPause() --CRIES
	stopSound('Sound');
end

function onResume() --CRIES HARDER
	resumeSound('Sound');
	playSound('TranceStatic', getSoundVolume('Static'), 'Sound'); --oops
end

function onUpdate()
	if not HellMode then
		for i=0, getProperty('notes.length')-1 do
			if getPropertyFromGroup('notes', i, 'canBeHit') == true and getPropertyFromGroup('notes', i, 'mustPress') == true  then
				pendulumDrain = false;
			else
				pendulumDrain = true;
			end
		end
	end

	if getSoundTime('Sound') > 1000 then --OH MY GOD
		setSoundTime('Sound', 0); 
	end

	if not pendulumDrain then
		trance = trance - (0.0015 / 4);
	else
		trance = trance - (0.0015 / 1);
	end

	setProperty('static.alpha', trance/2);

	if trance > 1 then
		setSoundVolume('Sound', trance-1);
	else
		setSoundVolume('Sound', 0);
	end

	if trance > 2 then
		trance = 2
		if canKill then
			stopSound('Sound'); --fuck you
			setHealth(0);
		end
	elseif trance < -0.25 then
		trance = -0.25
	end
	
	if getMouseX('hud') > getProperty('key_space.x') and getMouseY('hud') > getProperty('key_space.y') and getMouseX('hud') < getProperty('key_space.x') + getProperty('key_space.width') and getMouseY('hud') < getProperty('key_space.y') + getProperty('key_space.height') and mouseReleased() or botPlay then
		if canHitPend then
			canHitPend = false;
			hitPend = true;
			winPendulum();
		else
			if not botPlay then
				losePendulum(true);
			end
		end
	end

	if getProperty('ZA_HANDO.animation.curAnim.finished') and getProperty('ZA_HANDO.alpha') > 0 then
		removeLuaSprite('ZA_HANDO');
	end

end

function onBeatHit()
	if not HellMode then
		if curBeat % 4 == 0 then
			resetSwing();
		end
	else
		if curBeat % 2 == 0 then
			resetSwing();
		end
	end
end

function losePendulum(forced)
	if not forced and not pendulumDrain then
		trance = trance + (0.2 / 4);
	else
		trance = trance + (0.2 / 1);
	end
end

function winPendulum()
	trance = trance - 0.02;
	setProperty('pendulumShadow.visible', true);
	setProperty('pendulumShadow.alpha', 0.5);
	setProperty('pendulumShadow.angle', getProperty('pendulum2.angle'));
	doTweenAlpha('shadow', 'pendulumShadow', 0, stepCrochet/500, 'linear');
end

function resetSwing()
	cancelTween('swing1');
	cancelTween('swing2');
	cancelTween('swing3');
	cancelTween('swing4');
	setProperty('pendulum2.angle', 0);
	doTweenAngle('swing1', 'pendulum2', getProperty('pendulum2.angle')+30, pendSpeed, 'quadOut');
end

function onTweenCompleted(tag)
	if tag == 'swing1' then
		doTweenAngle('swing2', 'pendulum2', getProperty('pendulum2.angle')-30, pendSpeed, 'quadIn');
	end
	if tag == 'swing2' then
		doTweenAngle('swing3', 'pendulum2', getProperty('pendulum2.angle')-30, pendSpeed, 'quadOut');
	end
	if tag == 'swing3' then
		doTweenAngle('swing4', 'pendulum2', getProperty('pendulum2.angle')+30, pendSpeed, 'quadIn');
	end
	if tag == 'swing4' then
		doTweenAngle('swing1', 'pendulum2', getProperty('pendulum2.angle')+30, pendSpeed, 'quadOut');
	end
end
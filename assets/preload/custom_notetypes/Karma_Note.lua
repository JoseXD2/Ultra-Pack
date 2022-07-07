function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Fire Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Karma_Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'custom_notetypes/Karma_Note'); --Change texture --Change note splash texture
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashHue', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashSat', 0);
			setPropertyFromGroup('unspawnNotes', i, 'noteSplashBrt', -100);
			--setPropertyFromGroup('unspawnNotes', i, 'x', getPropertyFromGroup('unspawnNotes', i, 'x')-166);

			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Lets Opponent's instakill notes get ignored
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
			else
				setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true);
			end
		end
	end

	precacheSound('bone');
	--precacheImage('icons/icon-bf-KR');
	precacheImage('icons/v2/bf-KR');
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Karma_Note' then
		if getProperty('boyfriend.curCharacter') == 'bf-chara' then
			triggerEvent('Change Character', 'bf', 'bf-chara-KR');
		end
		if getProperty('boyfriend.curCharacter') == 'bf-dt' then
			triggerEvent('Change Character', 'bf', 'bf-dt-KR');
		end
		updateIcons()
		triggerEvent('Play Animation', 'singUPmiss', 'bf');
		playSound('bone', 1, 'bone_so');
		triggerEvent('Play Animation', 'singUPmiss', 'bf');
		runTimer('si', 0.001);
		
		runTimer('healthdrain', 0.0001);
	end
end
local healthDrained = 0;
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'si' then
		triggerEvent('Play Animation', 'singUPmiss', 'bf');
	end
	if tag == 'healthdrain' then
		setHealth(getProperty('health') - 0.0008);
		healthDrained = healthDrained + 0.0008;
		if healthDrained < 0.5 then
			runTimer('healthdrain', 0.0001);
		else
			if getProperty('boyfriend.curCharacter') == 'bf-chara-KR' then
				triggerEvent('Change Character', 'bf', 'bf-chara');
			end
			if getProperty('boyfriend.curCharacter') == 'bf-dt-KR' then
				triggerEvent('Change Character', 'bf', 'bf-dt');
			end
			updateIcons()
			healthDrained = 0;
		end
	end
end

function updateIcons()
	local iconsfolder = 'icons/v2/'
	local curchar1 = getProperty('boyfriend.curCharacter')
	local curchar2 = getProperty('dad.curCharacter')
	if
		curchar2 == 'sans' or
		curchar2 == 'sans-dark' or
		curchar2 == 'sans-mad' or
		curchar2 == 'sans-upset' or
		curchar2 == 'sans-worried' then
		curchar2 = 'sans'
	end
	if
		curchar1 == 'bf-chara-KR' or
		curchar1 == 'bf-dt-KR' then
		curchar1 = 'bf-KR'
	end
	makeAnimatedLuaSprite('iconV2P1', iconsfolder..curchar1, getProperty('iconP2.x'), getProperty('iconP2.y'))
	setObjectCamera('iconV2P1', 'camhud')
	addLuaSprite('iconV2P1', true)
	addAnimationByPrefix('iconV2P1', 'loss', 'loss', 24, true)
	addAnimationByPrefix('iconV2P1', 'win', 'win', 24, true)
	addAnimationByPrefix('iconV2P1', 'idle', 'idle', 24, true)
	setObjectOrder('iconV2P1', getObjectOrder('scoreTxt') - 1)
	setProperty('iconP1.alpha', 0)
	setProperty('iconV2P1.flipX', true)
	
	makeAnimatedLuaSprite('iconV2P2', iconsfolder..curchar2, getProperty('iconP2.x'), getProperty('iconP2.y'))
	setObjectCamera('iconV2P2', 'camhud')
	addLuaSprite('iconV2P2', true)
	addAnimationByPrefix('iconV2P2', 'loss', 'loss', 24, true)
	addAnimationByPrefix('iconV2P2', 'win', 'win', 24, true)
	addAnimationByPrefix('iconV2P2', 'idle', 'idle', 24, true)
	setObjectOrder('iconV2P2', getObjectOrder('iconV2P1') + 1)
	setProperty('iconP2.alpha', 0)
end
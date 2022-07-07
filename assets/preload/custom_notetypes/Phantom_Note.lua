function onCreate()
	--Iterate over all notes
	for i = 0, getProperty('unspawnNotes.length')-1 do
		--Check if the note is a Fire Note
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Phantom_Note' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'custom_notetypes/Phantom_Note'); --Change texture --Change note splash texture
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

	precacheSound('idk');
end

-- Function called when you hit a note (after note hit calculations)
-- id: The note member id, you can get whatever variable you want from this note, example: "getPropertyFromGroup('notes', id, 'strumTime')"
-- noteData: 0 = Left, 1 = Down, 2 = Up, 3 = Right
-- noteType: The note type string/tag
-- isSustainNote: If it's a hold note, can be either true or false
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Phantom_Note' then
		playSound('idk', 1, 'idk_s');
		runTimer('phant', 0.01);
	end
end
function onTimerCompleted(tag, loops, loopsLeft)
	if tag == 'phant' then
		if getProperty('camHUD.alpha') <= 0.05 then
			runTimer('phant1', 10.01);
		else
			setProperty('camHUD.alpha', getProperty('camHUD.alpha') - 0.01);
			runTimer('phant', 0.00000001);
		end
	end
	if tag == 'phant1' then
		setProperty('camHUD.alpha', getProperty('camHUD.alpha') + 0.01);
		if getProperty('camHUD.alpha') ~= 1 then
			runTimer('phant1', 0.00000001);
		end
	end
end
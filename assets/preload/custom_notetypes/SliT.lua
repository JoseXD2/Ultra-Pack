function onCreate()
	for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'SliT' then
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Slit');
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then --Doesn't let Dad/Opponent notes get ignored
			setPropertyFromGroup('unspawnNotes', i, 'ignoreNote', true); --Miss has no penalties
		end
	end 
end
end

function goodNoteHit(id, noteData, noteType, isSustainNote)
if noteType == 'SliT' then
debugPrint("-1 Miss")	
setProperty('health', getProperty('health')-1);		
setProperty('songMisses', getProperty('songMisses')- 1);	
	end
end
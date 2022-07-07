function onUpdate(elapsed)
	if boyfriendName == 'bf' then --replace the name for your character name
		for i=0,4,1 do
			setPropertyFromGroup('playerStrums', i, 'texture', 'NOTE_assets')
		end
		for i = 0, getProperty('unspawnNotes.length')-1 do
			if getPropertyFromGroup('unspawnNotes', i, 'mustPress') then
				setPropertyFromGroup('unspawnNotes', i, 'texture', 'GRAVE_assets'); --Change texture
			end
		end
	end
end
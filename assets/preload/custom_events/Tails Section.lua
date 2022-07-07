function onEvent(name)
	if name == 'Tails Section' then
		triggerEvent('Change Character', 'dad', 'tails')
		triggerEvent('Change Character', 'bf', 'bf')
		setProperty('dad.x', 220)
		setProperty('dad.y', 230) 
		setProperty('boyfriend.x', 690) 
		setProperty('boyfriend.y', 280) 
	end
end

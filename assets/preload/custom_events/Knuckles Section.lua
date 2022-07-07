function onEvent(name)
	if name == 'Knuckles Section' then
		triggerEvent('Change Character', 'dad', 'knuckles')
		triggerEvent('Change Character', 'bf', 'bf_flipped')
		setProperty('dad.x', 800)
		setProperty('dad.y', 230) 
		setProperty('boyfriend.x', 100)
		setProperty('boyfriend.y', 280)
	end
end

function onEvent(name)
	if name == 'Egghead Section' then
		triggerEvent('Change Character', 'dad', 'egghead')
		triggerEvent('Change Character', 'bf', 'bf')
		setProperty('dad.x', -100)
		setProperty('dad.y', 100) 
		setProperty('boyfriend.x', 690) 
		setProperty('boyfriend.y', 280) 
	end
end

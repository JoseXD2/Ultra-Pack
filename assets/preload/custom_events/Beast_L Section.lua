function onEvent(name)
	if name == 'Beast_L Section' then
		triggerEvent('Change Character', 'dad', 'beast_L')
		triggerEvent('Change Character', 'bf', 'bfTT_L')
		setProperty('dad.x', -320)
		setProperty('dad.y', -520) 
		setProperty('boyfriend.x', 600) 
		setProperty('boyfriend.y', 350) 
	end
end

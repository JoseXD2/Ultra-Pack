function onEvent(name)
	if name == 'Beast_R Section' then
		triggerEvent('Change Character', 'dad', 'beast_R')
		triggerEvent('Change Character', 'bf', 'bfTT_R')
		setProperty('dad.x', 400)
		setProperty('dad.y', -500) 
		setProperty('boyfriend.x', -200) 
		setProperty('boyfriend.y', 350) 
	end
end

function onUpdatePost(elapsed)
	if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.SPACE') and not jumping then -- YOU CAN EDIT SPACE TO ANY KEY YO WANT
		characterPlayAnim('boyfriend', 'hey', true)
	end
end
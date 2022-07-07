function onCreate()
	--Precaching Characters
	addCharacterToList('bf_flipped', 'boyfriend');
	addCharacterToList('bfTT_L', 'boyfriend');
	addCharacterToList('bfTT_R', 'boyfriend');
	addCharacterToList('beast_R', 'dad');
	addCharacterToList('tails', 'dad');
	addCharacterToList('knuckles', 'dad');
	addCharacterToList('egghead', 'dad');
	addCharacterToList('beast_R', 'dad');
	--Precaching Other Shit
	precacheImage('exe_shit/hitStatic')
	precacheImage('exe_shit/NewTitleMenuBG')
	precacheImage('exe_shit/Phase3Static')
	precacheImage('exe_shit/screenstatic')
	precacheSound('hitStatic1')
	setProperty('gf.visible', false);
end
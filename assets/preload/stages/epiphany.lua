function onCreate()

	makeLuaSprite('Sky', 'Sky', -500, -100);
	addLuaSprite('Sky', false);
	scaleObject('Sky', 1.5, 1.5);
	
	makeLuaSprite('EpiphanyBG', 'EpiphanyBG', -1000, -100);
	addLuaSprite('EpiphanyBG', false);
	scaleObject('EpiphanyBG', 1.5, 1.5);

	makeAnimatedLuaSprite('Epiphany Cut','Epiphany Cut', 500, -200)
	addAnimationByPrefix('Epiphany Cut','Cutting','Cut' ,24,true)
	scaleObject('Epiphany Cut', 1.0, 1.0);
	addLuaSprite('Epiphany Cut', false)
	objectPlayAnimation('Epiphany Cut','Cutting' ,false)

	close(true);

end
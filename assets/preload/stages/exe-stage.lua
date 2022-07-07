function onCreate()

	makeAnimatedLuaSprite('hitstatic','hitstatic', -90, -80)
	addAnimationByPrefix('hitstatic','static','staticANIMATION' ,24,true)
	setLuaSpriteScrollFactor('hitstatic', 0.0, 0.0);
	scaleObject('hitstatic', 1.5, 1.5);
	addLuaSprite('hitstatic', false)
	objectPlayAnimation('hitstatic','static' ,false)

	close(true);

end
function onCreate()

	makeLuaSprite('MomiStage','bg',-225,-100)
	addLuaSprite('MomiStage',false)

	makeAnimatedLuaSprite('baddust','dust',-280,550)
	addAnimationByPrefix('baddust','dusting','dustmove',15,true)
	addLuaSprite('baddust',true)

end

function onBeatHit()
	objectPlayAnimation('baddust','dusting',true)
	
end

function onStepHit( ... )

end

function onUpdate( ... )
	
end


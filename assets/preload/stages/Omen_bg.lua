function onCreate()

    makeLuaSprite('thecratere','cratere',-1500,-1342)
 	addLuaSprite('thecratere',false)
	setScrollFactor('thecratere', 0.5, 0.5);

	makeLuaSprite('theimmeubles','immeubles',-1600,-1450)
	addLuaSprite('theimmeubles',false)
	setScrollFactor('theimmeubles', 0.5, 0.5);

    makeAnimatedLuaSprite('thesol','sol',-1250,-750)
    addAnimationByPrefix('thesol','sol_animated','sol',24,true)
    addLuaSprite('thesol',false)
    objectPlayAnimation('thesol','sol_animated',true)
    setScrollFactor('thesol', 1, 1);
	
	close(true) --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end

function onBeatHit( ... )-- for every beat
	-- body
end

function onStepHit( ... )-- for every step
	-- body
end

function onUpdate( ... )
	-- body
end
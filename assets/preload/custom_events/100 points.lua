function onEvent(n,v1,v2)


	if n == '100 points' then

           makeAnimatedLuaSprite('points', 'fernan/100_points', 450, 260)
           addAnimationByPrefix('points', 'gain', '100', 24, 'true')
           scaleObject('points', 0.4, 0.4);
           setObjectCamera('points', 'hud')
           addLuaSprite('points', 'false')
           doTweenAlpha('funny', 'points', 0, 0.8, 'linear')

	end



end
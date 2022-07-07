function onCreate()
	-- background shit
	makeLuaSprite('Computer', 'Fernan/cosas_random', -300, -300);
	setScrollFactor('Computer', 0.9, 0.9);
	scaleObject('Computer', 1.2, 1.2);
	addLuaSprite('Computer', true)

	makeLuaSprite('Fondo', 'Fernan/fondo', -300, -100);
	setScrollFactor('Fondo', 0.9, 0.9);
	scaleObject('Fondo', 1.2, 1.2);
	addLuaSprite('Fondo', false)

	makeAnimatedLuaSprite('Foxy', 'Fernan/Foxy', -480, -228);
	addAnimationByPrefix('Foxy','Idle','Foxy',24,true);
	scaleObject('Foxy', 1.2, 1.2);
	addLuaSprite('Foxy',false);
	objectPlayAnimation('Foxy','Idle',true);

	makeAnimatedLuaSprite('Curly', 'Fernan/Curly', 500, 320);
	addAnimationByPrefix('Curly','Idle','Curly',24,true);
	scaleObject('Curly', 0.5, 0.5);
	addLuaSprite('Curly',false);
	objectPlayAnimation('Curly','Idle',true);

        if songName == 'Unstoppable-idol' then

	makeAnimatedLuaSprite('Diego', 'Fernan/Diego', 30, 60);
	addAnimationByPrefix('Diego','Idle','Brodi_IDLE',24,true);
	addLuaSprite('Diego',false);
	objectPlayAnimation('Diego','Idle',true);
end


	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end
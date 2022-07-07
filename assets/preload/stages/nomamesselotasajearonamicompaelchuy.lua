function onCreate()  
  
makeLuaSprite('bg', 'backgrounds/buried/bg', -710, -260);
addLuaSprite('bg', false);
scaleObject('bg', 7.7, 7.4)  

makeLuaSprite('floor', 'backgrounds/buried/floor', -710, -260);
addLuaSprite('floor', false);
scaleObject('floor', 7.7, 7.4)  

makeLuaSprite('graves', 'backgrounds/buried/graves', -710, -260);
addLuaSprite('graves', false);
scaleObject('graves', 7.7, 7.4)  

makeAnimatedLuaSprite('character', 'characters/gengar_assets', 770, 150);
addAnimationByPrefix('character', 'idle', 'gengar idle', 24, true); 
addAnimationByPrefix('character', 'singLEFT', 'gengar left', 24, false);
addAnimationByPrefix('character', 'singDOWN', 'gengar down', 24, false);
addAnimationByPrefix('character', 'singUP', 'gengar up', 24, false);
addAnimationByPrefix('character', 'singRIGHT', 'gengar right', 24, false);
objectPlayAnimation('character', 'idle');
scaleObject('character', 6.5, 6.5)  
addLuaSprite('character', true);

makeAnimatedLuaSprite('character2', 'characters/ba_missingno_assets', 70, 120);
addAnimationByPrefix('character2', 'idle', 'BA_Missingno_Idle', 24, true); 
addAnimationByPrefix('character2', 'singLEFT', 'BA_Missingno_Left', 24, false);
addAnimationByPrefix('character2', 'singDOWN', 'BA_Missingno_Down', 24, false);
addAnimationByPrefix('character2', 'singUP', 'BA_Missingno_Up', 24, false);
addAnimationByPrefix('character2', 'singRIGHT', 'BA_Missingno_Right', 24, false);
objectPlayAnimation('character2', 'idle');
scaleObject('character2', 6.5, 6.5)  
addLuaSprite('character2', true);

makeAnimatedLuaSprite('character3', 'characters/leanmonster', 1200, 280);
addAnimationByPrefix('character3', 'idle', 'Muk_Idle', 24, true); 
addAnimationByPrefix('character3', 'singLEFT', 'Muk_Left', 24, false);
addAnimationByPrefix('character3', 'singDOWN', 'Muk_Puke', 24, false);
addAnimationByPrefix('character3', 'singUP', 'Muk_Up', 24, false);
addAnimationByPrefix('character3', 'singRIGHT', 'Muk_Right', 24, false);
objectPlayAnimation('character3', 'idle');
scaleObject('character3', 6.5, 6.5)  
addLuaSprite('character3', true);

makeAnimatedLuaSprite('star', 'characters/enter_gengar', 380, -140);
addAnimationByPrefix('star', 'que', 'gengar entrance', 24, false); 
scaleObject('star', 6.5, 6.5)  
addLuaSprite('star', true);

makeAnimatedLuaSprite('star2', 'characters/missingnopokeball_assets', 370, 400);
addAnimationByPrefix('star2', 'laz', 'Ball_Throw', 24, false); 
addAnimationByPrefix('star2', 'idle', 'Ball_Idle_Normal', 24, false); 
addAnimationByPrefix('star2', 'burst', 'Ball_FinalBurst', 24, false); 
scaleObject('star2', 6.5, 6.5)  
addLuaSprite('star2', true);

makeLuaSprite('buried_bf', 'backgrounds/buried/buried_bf', 0, 27);
addLuaSprite('buried_bf', false);
setObjectCamera('buried_bf', 'hud');
scaleObject('buried_bf', 3.7, 3.5)  

makeLuaSprite('buried_hud', 'backgrounds/buried/buried_hud', 670, 530);
addLuaSprite('buried_hud', false);
setObjectCamera('buried_hud', 'hud');
scaleObject('buried_hud', 3.7, 3.5)  

setProperty('star.visible', false)
setProperty('star2.visible', false)
setProperty('character.visible', false)
setProperty('character2.visible', false)
setProperty('character3.visible', false)

setProperty('star.antialiasing', false)
setProperty('star2.antialiasing', false)
setProperty('buried_hud.antialiasing', false)
setProperty('buried_bf.antialiasing', false)
setProperty('character.antialiasing', false)
setProperty('character2.antialiasing', false)
setProperty('character3.antialiasing', false)
setProperty('bg.antialiasing', false)
setProperty('graves.antialiasing', false)
setProperty('floor.antialiasing', false)
end

function onEvent(name,value1,value2)
if name == 'Asbel' then 	
if value1 == 'get' then 	
objectPlayAnimation('star', 'que');	
setProperty('star.visible', true)
end
if value1 == 'gar' then 	
setProperty('character.visible', true)
setProperty('star.visible', false)
end
if value1 == 'si' then 	
setProperty('star2.visible', true)	
characterPlayAnim('boyfriend', 'bolas');
objectPlayAnimation('star2', 'laz');
end
if value1 == 'si2' then 	
objectPlayAnimation('star2', 'idle');	
end
if value1 == 'sib' then 	
objectPlayAnimation('star2', 'burst');	
end
if value1 == 'sig' then 	
setProperty('star2.visible', false)	
setProperty('character2.visible', true)
end
if value1 == 'adi' then 	
doTweenY("character2", "character2", 1000, 1, "linear")	
removeLuaSprite('character', true);
end
if value1 == 'retro' then 	
setProperty("defaultCamZoom", 0.65) 	
setProperty("camGame.zoom", 0.65)  
end
if value1 == 'nor' then 	
setProperty("defaultCamZoom", 0.54) 	
setProperty("camGame.zoom", 0.54)  
end
if value1 == 'mokos' then 	
setProperty('character3.visible', true)
end
end
end

function onBeatHit()
if curBeat % 2 == 0 then
objectPlayAnimation('character', 'idle');
objectPlayAnimation('character2', 'idle');
objectPlayAnimation('character3', 'idle');
	end
end 

function onCreatePost()
setProperty('healthBarBG.visible', false)
setProperty('healthBar.visible', false)
setProperty('scoreTxt.visible', false)
setProperty('iconP1.visible', false)
setProperty('iconP2.visible', false)	
noteTweenX("aaaaaa1", 0, 722+85, 0.01, "linear")
noteTweenX("aaaaaa2", 1, 834+85, 0.01, "linear")
noteTweenX("aaaaaa3", 2, 946+85, 0.01, "linear")
noteTweenX("aaaaaa4", 3, 1058+85, 0.01, "linear")

noteTweenX("aaaaaa5", 4, 92-75, 0.01, "linear")
noteTweenX("aaaaaa6", 5, 204-75, 0.01, "linear")
noteTweenX("aaaaaa7", 6, 316-75, 0.01, "linear")
noteTweenX("aaaaaa8", 7, 428-75, 0.01, "linear")	
for i=0, 3 do
setPropertyFromGroup('opponentStrums', i, 'downScroll', true)
setPropertyFromGroup('opponentStrums', i, 'y', 550)
end
if getPropertyFromClass('ClientPrefs', 'downScroll', true) then
for i=0, 3 do
setPropertyFromGroup('opponentStrums', i, 'downScroll', false)
setPropertyFromGroup('opponentStrums', i, 'y', 90)
end
end
end

local singAnims = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function opponentNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'geg' then
		objectPlayAnimation('character', singAnims[direction + 1], false)
	end
end 

local singAnims2 = {"singLEFT", "singDOWN", "singUP", "singRIGHT"}
function goodNoteHit(id, direction, noteType, isSustainNote)
	if noteType == 'sig' then
		objectPlayAnimation('character2', singAnims2[direction + 1], false)
	end
end 
function onCreate()
makeLuaSprite('Lost_silver_back', 'backgrounds/feralisleep/Lost_silver_back', -100, 790);
addLuaSprite('Lost_silver_back', false);
scaleObject('Lost_silver_back', 1, 1)  

makeLuaSprite('Lost_silver_lake', 'backgrounds/feralisleep/Lost_silver_lake', -100, 690);
addLuaSprite('Lost_silver_lake', false);
scaleObject('Lost_silver_lake', 1, 1)  

makeLuaSprite('Lost_silver_fog', 'backgrounds/feralisleep/Lost_silver_fog', -100, 470);
addLuaSprite('Lost_silver_fog', false);
scaleObject('Lost_silver_fog', 1, 1)  

makeLuaSprite('Lost_silver_ground', 'backgrounds/feralisleep/Lost_silver_ground', -100, 790);
addLuaSprite('Lost_silver_ground', false);
scaleObject('Lost_silver_ground', 1, 1)  

makeLuaSprite('Lost_silver_tree', 'backgrounds/feralisleep/Lost_silver_tree', -350, -190);
addLuaSprite('Lost_silver_tree', false);
scaleObject('Lost_silver_tree', 0.9, 0.95)  
 
makeLuaSprite('what', 'what', 0, 0);
addLuaSprite('what', false);
scaleObject('what', 1, 1)  
setProperty('what.alpha', 0)
setObjectCamera('what', 'hud');

if difficulty == 1 then

makeLuaSprite('Msse', 'Msse', 0, 0);
addLuaSprite('Msse', true);
scaleObject('Msse', 1, 1)  
setObjectCamera('Msse', 'other');

	makeLuaSprite('sas', 'sas', 0, 0);
	setLuaSpriteScrollFactor('sas', 0, 0);
	setProperty('sas.alpha', 0.0001);
	addLuaSprite('sas', true);
	setObjectCamera('sas', 'hud');	
end 
end

function onEvent(name,value1,value2)
if name == 'Asbel' then 
if value1 == 'xd2' and difficulty == 1 then 
debugPrint("GOOD LUCK")		
setProperty('songMisses', 20);	
end		
if value1 == 'xd' and difficulty == 1 then 
debugPrint("+5 Misses")		
setProperty('sas.alpha', 1);
doTweenAlpha('sasss', 'sas', 0, 0.5, 'linear');
setObjectCamera('sas', 'hud');	
setProperty('health', getProperty('health')-0.50);	
setProperty('songMisses', getProperty('songMisses')+ 5);	
end	
if value1 == 'flash2' then 
doTweenAlpha('what', 'what', 1, 5, 'linear')
end
if value1 == 'flash3' then 
doTweenAlpha('what', 'what', 0, 1, 'linear')
end    	
end
end

local atole = 0

function goodNoteHit(id, noteData, noteType, isSustainNote)
if not isSustainNote and difficulty == 1 then	
atole = atole + 1 
end
end


function onUpdate()
if atole == 25 and difficulty == 1 then
debugPrint("-1 Miss")		
setProperty('songMisses', getProperty('songMisses')- 1);
atole = 0	
end
end
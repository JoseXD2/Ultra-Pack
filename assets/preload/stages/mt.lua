valorx = -890
valory = -400

function onCreate()
makeLuaSprite('bg ref', 'backgrounds/mountain/bg ref', valorx, valory);
addLuaSprite('bg ref', false);
scaleObject('bg ref', 1.4, 1.4)  

makeLuaSprite('Pokemons', 'backgrounds/mountain/Pokemons', valorx + 1200, valory + 400);
addLuaSprite('Pokemons', false);
scaleObject('Pokemons', 2, 2)  

makeLuaSprite('Blastoise', 'backgrounds/mountain/Blastoise', valorx - 400, valory +300);
addLuaSprite('Blastoise', false);
scaleObject('Blastoise', 2.8, 2.8)  

makeLuaSprite('Charizard', 'backgrounds/mountain/Charizard', valorx + 400, valory - 100);
addLuaSprite('Charizard', true);
scaleObject('Charizard', 2, 2) 
end 
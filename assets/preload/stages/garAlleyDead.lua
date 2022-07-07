function onCreate()

    luaDebugMode = true;

    -- bg
    makeLuaSprite('bg', 'seos/garStagebgAlt', -500, -170);
    setScrollFactor('bg', 0.7, 0.7);

    -- smoke
    makeAnimatedLuaSprite('smoke', 'seos/garSmoke', 0, -350);
    setProperty('smoke.alpha', 0.6);
    setProperty('smoke.scale.x', 1.7);
    setProperty('smoke.scale.y', 2);
    addAnimationByPrefix('smoke', 'garSmoke', 'smokey', 13);
    objectPlayAnimation('smoke', 'garSmoke');
    -- scaleObject('smoke', 1.7);
    setScrollFactor('smoke', 0.7, 0.7);

    -- bgAlley
    makeLuaSprite('bgAlley', 'seos/garStagealt', -500, -200);
    setScrollFactor('bgAlley', 0.9, 0.9);

    -- corpse
    makeLuaSprite('corpse', 'seos/gardead', -230, 540);
    setScrollFactor('corpse', 0.9, 0.9);

    addLuaSprite('bg', false);
    addLuaSprite('bgAlley', false);
    addLuaSprite('corpse', false);
    addLuaSprite('smoke', true);
end

function onUpdate(elapsed)

end

function onCreate()

    -- bg
    makeLuaSprite('bg', 'seos/garStagebgRise', -500, -170);
    setLuaSpriteScrollFactor('bg', 0.7, 0.7);

    -- smoke
    makeAnimatedLuaSprite('smoke', 'seos/garSmoke', 0, -350);
    setProperty('smoke.alpha', 0.3);
    setProperty('smoke.scale.x', 1.7);
    setProperty('smoke.scale.y', 2);
    addAnimationByPrefix('smoke', 'garsmoke', 'smokey', 13);
    objectPlayAnimation('smoke', 'garsmoke');
    -- scaleObject('smoke', 1.7);
    setScrollFactor('smoke', 0.7, 0.7);

    -- bgAlley
    makeLuaSprite('bgAlley', 'seos/garStageRise', -500, -200);
    setLuaSpriteScrollFactor('bgAlley', 0.9, 0.9);

    -- corpse
    makeLuaSprite('corpse', 'seos/gardead', -230, 540);
    setLuaSpriteScrollFactor('corpse', 0.9, 0.9);

    addLuaSprite('bg', false);
    addLuaSprite('bgAlley', false);
    addLuaSprite('corpse', false);
    addLuaSprite('smoke', true);
end

function onUpdate(elapsed)

end
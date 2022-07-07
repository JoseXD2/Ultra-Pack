function onCreate()

    -- bg
    makeLuaSprite('bg', 'seos/garStagebg', -500, -170);
    setLuaSpriteScrollFactor('bg', 0.7, 0.7);

    -- bgAlley
    makeLuaSprite('bgAlley', 'seos/garStage', -500, -200);
    setLuaSpriteScrollFactor('bgAlley', 0.9, 0.9);

    addLuaSprite('bg', false);
    addLuaSprite('bgAlley', false);
end

function onUpdate(elapsed)

end
function onCreatePost()
    makeLuaText('score', 'Score: 0 Misses: 0', getPropertyFromClass('flixel.FlxG', 'width'),
    getProperty('scoreTxt.x')-200, getProperty('scoreTxt.y')); 
    setProperty('scoreTxt.visible', false);
    setProperty('timeTxt.visible', false);
    setProperty('timeBarBG.visible', false);
    setProperty('timeBar.visible', false);
    setTextSize('score', 30);
    setTextFont('score', "poke.ttf");
    setTextBorder('score', 1, '000000');
    setTextAlignment('score', 'center');
    addLuaText('score');
end

function onUpdatePost(elasped)
    if not botPlay then
        setTextString('score', 'Score: ' .. score .. '      Misses: ' .. misses);
    end
end

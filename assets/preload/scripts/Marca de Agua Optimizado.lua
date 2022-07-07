currentDifficulty ="Optimizado por Nickobelit" ;

function onCreate()
    makeLuaText("Optimizado por Nickobelit",currentDifficulty, 0, 990, 675);
    setTextAlignment("Optimizado por Nickobelit", 'left');
    setTextSize("Optimizado por Nickobelit", 18);
    setTextBorder("Optimizado por Nickobelit", 1, 'FF0000');
    addLuaText( "Optimizado por Nickobelit");
end

function onCreatePost()
    setProperty('timeBar.y', getProperty('timeBar.y')  -10);
    setProperty('timeTxt.y', getProperty('timeTxt.y')  -10);
end

function onUpdate(elapsed)
    currentDifficulty = getProperty("Optimizado por Nickobelit");
end
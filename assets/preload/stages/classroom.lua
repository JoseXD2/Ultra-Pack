function onCreate()
    --background shit (thanks bbpanzu)
    makeLuaSprite('bg','da schoolhouse/baldi/baldi_bg',-600,-200)
    addLuaSprite('bg',false)
    setLuaSpriteScrollFactor('bg', 0.9, 0.9);
    
    makeLuaSprite('chair','da schoolhouse/baldi/baldi_chair',-700,-490)
    addLuaSprite('chair',false)
    setLuaSpriteScrollFactor('chair', 0.9, 0.9);
    
    makeLuaSprite('floorlol','da schoolhouse/baldi/baldi_floor',-700,-320)
    addLuaSprite('floorlol',false)
    setLuaSpriteScrollFactor('floorlol', 0.9, 0.9);
    
    makeLuaSprite('table','da schoolhouse/baldi/baldi_front',-800,-320)
    addLuaSprite('table',true)
    setLuaSpriteScrollFactor('table', 1.3, 1.3);
    
    close(true)
end
function onCreate()
  --background
  makeLuaSprite('bg','wallbg',-150,-700)
  makeLuaSprite('light','light',100,-200)
  makeLuaSprite('bg2','cityfarbg',-300,0)
  makeLuaSprite('bg3','citybg',-300,0)
  makeLuaSprite('bg4','citycolor',-300,0)
  makeLuaSprite('deco','deco',-300,0)
  
  addLuaSprite('bg4',false)
  addLuaSprite('bg2',false)
  addLuaSprite('bg3',false)
  addLuaSprite('deco',false)
  addLuaSprite('bg',false)
  addLuaSprite('light',true)
  
  close(true);
  end
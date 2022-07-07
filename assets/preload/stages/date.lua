function onCreate()
  --background
  makeLuaSprite('fg','balc',-225,400)
  makeLuaSprite('bg','sky_bg',100,0)
  makeLuaSprite('bg2','skyscrapers',-100,0)
  makeLuaSprite('deco','deco',-300,0)
  makeLuaSprite('light','light',200,-200)
  
  addLuaSprite('light',true)
  addLuaSprite('bg',false)
  addLuaSprite('bg2',false)
  addLuaSprite('fg',false)
  makeLuaSprite('deco',true)
  
  close(true);
  end
function onCreate()
  --background
  makeLuaSprite('fg','fair_gate',-250,-350)
  makeAnimatedLuaSprite('sky','sky_heartbass',-100,0)
  scaleObject('sky',1.3,1)
  addAnimationByPrefix('sky','idle','sky_heartbass',24,true)
  objectPlayAnimation('sky','idle',true)
  makeAnimatedLuaSprite('wheel','farris_wheel',-100,-100)
  addAnimationByPrefix('wheel','idle','farris_wheel',24,true)
  objectPlayAnimation('wheel','idle',true)
  makeLuaSprite('hb','bg_hb',-200,200)
  makeLuaSprite('mg','midg',-100,100)
  makeLuaSprite('chairs','chairs',300,400)
  addLuaSprite('sky',false)
  addLuaSprite('hb',false)
  addLuaSprite('mg',false)
  addLuaSprite('wheel',false)
  addLuaSprite('fg',false)
  addLuaSprite('chairs',false)
  
end

function onStepHit()
  if curStep==1440 then
  makeLuaSprite('fbop','frontboppers',-100,100)
  makeLuaSprite('bbop','backboppers',-100,-100)
  addLuaSprite('bbop',false)
  addLuaSprite('fbop',false)
  
  end
  end
  
  
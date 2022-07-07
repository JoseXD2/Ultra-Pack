function onCreate()
  --background
  makeLuaSprite('sky','sky',-500,-200)
  setLuaSpriteScrollFactor('sky',0.1,0.1)
  scaleObject('sky',1.5,1.5)
  
  makeLuaSprite('city','city',-10,0)
  setLuaSpriteScrollFactor('city',0.3,0.3)
  scaleObject('city',0.85,0.85)
  
  makeAnimatedLuaSprite('light','light',-10,0)
  addAnimationByPrefix('light','idle','light idle',1,true)
  objectPlayAnimation('light','light idle',true)
  setLuaSpriteScrollFactor('light',0.3,0.3)
  scaleObject('light',0.85,0.85)
  
  makeLuaSprite('behindtrain','behindtrain',-40,50)
  
  makeLuaSprite('street','street',-40,50)
  
  makeLuaSprite('back','garStageRise',-500,-170)
  
  makeAnimatedLuaSprite('smoke','garSmoke',-500,150)
  addAnimationByPrefix('smoke','idle','smokey instance',24,true)
  objectPlayAnimation('smoke','smokey instance',true)
  scaleObject('smoke',1.9,1.3)
  
  addLuaSprite('sky',false)
  addLuaSprite('city',false)
  addLuaSprite('light',false);--Added offscreen before it starts moving.
  addLuaSprite('behindtrain',false)
  addLuaSprite('street',false)
  addLuaSprite('back',false)
  addLuaSprite('smoke',true)
  
  close(true);
  end
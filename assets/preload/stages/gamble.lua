function onCreate()
   -- background shit
   makeLuaSprite('table','gamble/table',-1000,-420)
   setScrollFactor('table', 1.0, 1.0)
   scaleObject('table',1.1,1.1)

   makeLuaSprite('cover','gamble/table',600,-420)
   setScrollFactor('cover', 1.0, 1.0)
   scaleObject('cover',1.1,1.1)

   makeLuaSprite('light','gamble/light',-900,-210)
   setScrollFactor('light', 1.0, 1.0)
   setProperty('light.alpha',0.375)
   scaleObject('light',1.0,1.0)

   addLuaSprite('table',false);
   addLuaSprite('cover',true);
   addLuaSprite('light',true);
end

function onEvent(name, value1, value2)
if name == '3rdstrum' then
noteTweenX("a", 4, 440-15, 2, "linear")
noteTweenX("xxx", 5, 540-15, 2, "linear")
noteTweenX("e2", 6, 645-16, 2, "linear")
noteTweenX("v", 7, 740-15, 2, "linear")
noteTweenX("sf", 0, 850, 2, "linear")
noteTweenX("fsd", 1, 952, 2, "linear")
noteTweenX("hd", 2, 1055, 2, "linear")
noteTweenX("aw", 3, 1155, 2, "linear")
end
end
local name = "NT846 ModPack"; -- put your name
local textSize = 32; -- to make it bigger change it to 32!
local borderSize = 3; -- change it to 3
local colorText = 'ffffff';
local font = "NT846 ModPack.ttf"; --font name in mods/fonts
local alignment = 'left'; --change this only [left, right, and center]
local x = 340; -- the offset x
local y = 0; -- the offset y
-- u can change offset so ye
local textfieldWidth = 0;
-- if you want remove the watermark write this removeLuaText('wtmr', true);
function onCreate()
       makeLuaText('wtmr', name, textfieldWidth, x, y)
       setTextSize('wtmr', textSize)
       setTextBorder('wtmr', borderSize, '000000')
       setTextFont('wtmr', font)
       setTextAlignment('wtmr', alignment)
       setTextColor('wtmr', colorText)
       addLuaText('wtmr')

       close(true);
end
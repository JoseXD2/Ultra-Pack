function onEvent(name, value1, value2)
	if name == "BAP BOP BESP BOP" then
function onUpdatePost() 
    songPos = getSongPosition()
    local currentBeat = (songPos/5000)*(curBpm/60)
    doTweenX('dadFloatX', 'dad', defaultOpponentY+(math.sin(songPos*0.003)*-100)+-100, 0.14, 'sineIn')
end end end 
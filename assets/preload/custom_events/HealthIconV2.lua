function updateIcons()
	local iconsfolder = 'icons/v2/'
	local curchar1 = getProperty('boyfriend.curCharacter')
	local curchar2 = getProperty('dad.curCharacter')
	if
		curchar2 == 'sans' or
		curchar2 == 'sans-dark' or
		curchar2 == 'sans-mad' or
		curchar2 == 'sans-upset' or
		curchar2 == 'sans-worried' then
		curchar2 = 'sans'
	end
	if
		curchar1 == 'bf-chara-KR' or
		curchar1 == 'bf-dt-KR' then
		curchar1 = 'bf-KR'
	end
	makeAnimatedLuaSprite('iconV2P1', iconsfolder..curchar1, getProperty('iconP2.x'), getProperty('iconP2.y'))
	setObjectCamera('iconV2P1', 'camhud')
	addLuaSprite('iconV2P1', true)
	addAnimationByPrefix('iconV2P1', 'loss', 'loss', 24, true)
	addAnimationByPrefix('iconV2P1', 'win', 'win', 24, true)
	addAnimationByPrefix('iconV2P1', 'idle', 'idle', 24, true)
	setObjectOrder('iconV2P1', getObjectOrder('scoreTxt') - 1)
	setProperty('iconP1.alpha', 0)
	setProperty('iconV2P1.flipX', true)
	
	makeAnimatedLuaSprite('iconV2P2', iconsfolder..curchar2, getProperty('iconP2.x'), getProperty('iconP2.y'))
	setObjectCamera('iconV2P2', 'camhud')
	addLuaSprite('iconV2P2', true)
	addAnimationByPrefix('iconV2P2', 'loss', 'loss', 24, true)
	addAnimationByPrefix('iconV2P2', 'win', 'win', 24, true)
	addAnimationByPrefix('iconV2P2', 'idle', 'idle', 24, true)
	setObjectOrder('iconV2P2', getObjectOrder('iconV2P1') + 1)
	setProperty('iconP2.alpha', 0)
end
function onCreatePost()
	updateIcons()
end
function goodNoteHit(id, noteData, noteType, isSustainNote)
	if noteType == 'Karma_Note' then
		updateIcons()
	end
end
function onUpdate()
	if getProperty('healthBar.percent') < 20 then
		objectPlayAnimation('iconV2P1', 'loss')
		objectPlayAnimation('iconV2P2', 'win')
	elseif getProperty('healthBar.percent') > 80 then
		objectPlayAnimation('iconV2P1', 'win')
		objectPlayAnimation('iconV2P2', 'loss')
	else
		objectPlayAnimation('iconV2P1', 'idle')
		objectPlayAnimation('iconV2P2', 'idle')
	end
	setProperty('iconV2P1.x', getProperty('iconP1.x'))
	setProperty('iconV2P1.scale.x', getProperty('iconP1.scale.x'))
	setProperty('iconV2P1.scale.y', getProperty('iconP1.scale.y'))

	setProperty('iconV2P2.x', getProperty('iconP2.x'))
	setProperty('iconV2P2.scale.x', getProperty('iconP2.scale.x'))
	setProperty('iconV2P2.scale.y', getProperty('iconP2.scale.y'))
end
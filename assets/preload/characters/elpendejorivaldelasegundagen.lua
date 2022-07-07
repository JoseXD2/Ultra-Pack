local texture = 'noteSplashesFE' --image path goes here

function onCreate()

end

function onStartCountdown()
    makeAnimatedLuaSprite('splashLeftd', texture)
    makeAnimatedLuaSprite('splashDownx', texture)
    makeAnimatedLuaSprite('splashUpp', texture)
    makeAnimatedLuaSprite('splashRightws', texture)

    for i=1, 3 do
        addAnimationByPrefix('splashLeftd', 'splash' ..i, 'note splash purple ' ..i, 24, false)
        addAnimationByPrefix('splashDownx', 'splash' ..i, 'note splash blue ' ..i, 24, false)
        addAnimationByPrefix('splashUpp', 'splash' ..i, 'note splash green ' ..i, 24, false)
        addAnimationByPrefix('splashRightws', 'splash' ..i, 'note splash red ' ..i, 24, false)
    end

    setProperty('splashLeftd.alpha', 0.2)
    setProperty('splashDownx.alpha', 0.2)
    setProperty('splashUpp.alpha', 0.2)
    setProperty('splashRightws.alpha', 0.2)

    setObjectCamera('splashLeftd', 'camHUD')
    setObjectCamera('splashDownx', 'camHUD')
    setObjectCamera('splashUpp', 'camHUD')
    setObjectCamera('splashRightws', 'camHUD')

    setProperty('splashLeftd.visible', false)
    setProperty('splashDownx.visible', false)
    setProperty('splashUpp.visible', false)
    setProperty('splashRightws.visible', false)

    setProperty('splashLeftd.offset.x', 10)
    setProperty('splashLeftd.offset.y', 10)
    setProperty('splashDownx.offset.x', 10)
    setProperty('splashDownx.offset.y', 10)
    setProperty('splashUpp.offset.x', 10)
    setProperty('splashUpp.offset.y', 10)
    setProperty('splashRightws.offset.x', 10)
    setProperty('splashRightws.offset.y', 10)

    setObjectOrder('splashLeftd', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashDownx', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashUpp', getObjectOrder('grpNoteSplashes'))
    setObjectOrder('splashRightws', getObjectOrder('grpNoteSplashes'))

    addLuaSprite('splashLeftd')
    addLuaSprite('splashDownx')
    addLuaSprite('splashUpp')
    addLuaSprite('splashRightws')
    return Function_Continue
end

function opponentNoteHit(id, dir, type, sus)
    if dir == 0 and not sus then
        setProperty('splashLeftd.x', getPropertyFromGroup('playerStrums', 0, 'x')-(160*0.7)*0.95)
        setProperty('splashLeftd.y', getPropertyFromGroup('playerStrums', 0, 'y')-(160*0.7))
        setProperty('splashLeftd.visible', true)
        objectPlayAnimation('splashLeftd', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashLeftd.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif dir == 1 and not sus  then
        setProperty('splashDownx.x', getPropertyFromGroup('playerStrums', 1, 'x')-(160*0.7)*0.95)
        setProperty('splashDownx.y', getPropertyFromGroup('playerStrums', 1, 'y')-(160*0.7))
        setProperty('splashDownx.visible', true)
        objectPlayAnimation('splashDownx', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashDownx.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif dir == 2 and not sus then
        setProperty('splashUpp.x', getPropertyFromGroup('playerStrums', 2, 'x')-(160*0.7)*0.95)
        setProperty('splashUpp.y', getPropertyFromGroup('playerStrums', 2, 'y')-(160*0.7))
        setProperty('splashUpp.visible', true)
        objectPlayAnimation('splashUpp', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashUpp.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    elseif dir == 3 and not sus then
        setProperty('splashRightws.x', getPropertyFromGroup('playerStrums', 3, 'x')-(160*0.7)*0.95)
        setProperty('splashRightws.y', getPropertyFromGroup('playerStrums', 3, 'y')-(160*0.7))
        setProperty('splashRightws.visible', true)
        objectPlayAnimation('splashRightws', 'splash'.. getRandomInt(1,2), true)
        setProperty('splashRightws.animation.curAnim.frameRate', 24 + getRandomInt(-2, 2))
    end
end

function onUpdate()
    if getProperty('splashLeftd.animation.curAnim.finished') and getProperty('splashLeftd.visible') then
        setProperty('splashLeftd.visible', false)
    end
    if getProperty('splashDownx.animation.curAnim.finished') and getProperty('splashDownx.visible') then
        setProperty('splashDownx.visible', false)
    end
    if getProperty('splashUpp.animation.curAnim.finished') and getProperty('splashUpp.visible') then
        setProperty('splashUpp.visible', false)
    end
    if getProperty('splashRightws.animation.curAnim.finished') and getProperty('splashRightws.visible') then
        setProperty('splashRightws.visible', false)
    end
end

function onUpdatePost(elapsed)
misses = getProperty('songMisses')
    if misses >= 21 then
        setProperty('health', 0)
    end
end
function onCreate()
  makeLuaSprite('whiteflash', '', -1500, -1000)
  makeGraphic('whiteflash', 3920, 3080, 'FFFFFF')

  addLuaSprite('whiteflash',true)
  setProperty('whiteflash.alpha', 0)
end
function onEvent(name, value1, value2)
  if name == 'whiteflash2' then
    setProperty('whiteflash.alpha', 1)
    doTweenAlpha('whiteflashbye', 'whiteflash', 0, 1, 'linear')
  end
end
function onUpdate()
  haha = false
  if getPropertyFromClass('flixel.FlxG', 'keys.justPressed.T') and not haha == true then
    setProperty('whiteflash.alpha', 1)
    doTweenAlpha('whiteflashbye', 'whiteflash', 0, 1, 'linear')
  end
end

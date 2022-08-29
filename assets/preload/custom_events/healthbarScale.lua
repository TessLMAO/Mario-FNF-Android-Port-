function onEvent(name, value1, value2)
    if name == 'healthbarScale' then
doTweenX('healthBarBG', 'healthBarBG.scale',value1, 1, 'linear')
doTweenX('healthBar', 'healthBar.scale',value2, 1, 'linear')
    end
end
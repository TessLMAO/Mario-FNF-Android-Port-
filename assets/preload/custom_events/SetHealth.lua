function onEvent(name, value1, value2)
health = getProperty('health')
    if name == 'SetHealth' then
    setProperty("health", value1) 
    end
end
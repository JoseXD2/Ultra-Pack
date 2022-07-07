function onEvent(name, value1, value2) 
if name == 'Celebi' then
curentHealth = getProperty('health');
if 0 > curentHealth - (value1) then
setProperty('health', 0);
end
end
end
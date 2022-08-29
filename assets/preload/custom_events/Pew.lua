--Script by RealReal 


duration = 0

fadeoutduration = 0

function onCreate()
precacheImage('PEW/LASER') --ตอนโผล่คร้งเเรกจะได้ไม่กระตุก
end



function onEvent(name, value1, value2)
	if name == "Pew" then
       makeAnimatedLuaSprite('pew', 'PEW/LASER', 215, -200)
       addAnimationByPrefix('pew', 'Pew', 'THE LASER', 24, false)
	   
	   setObjectCamera('pew', 'camHUD') 
	   addLuaSprite('pew', true)
	   
	   fadeoutduration = value2
	   duration = value1
	   
	   runTimer('finished', duration, 1)
	
    end
	
	
end
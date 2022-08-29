--Script by RealReal 

jumpOut = 0

duration = 0

die = false

function onCreate()
precacheImage('pow') --ตอนโผล่คร้งเเรกจะได้ไม่กระตุกk
precacheSound('coin') --เสียงตอนเก็บ

end



function onEvent(name, value1, value2)
	if name == "Coinpop" then
       makeLuaSprite('COIN', 'pow', 150, 500)
       
	   
	   setObjectCamera('COIN', 'other') 
	   setProperty('COIN.scale.x',0.5)
	   setProperty('COIN.scale.y',0.5)
	   setProperty('COIN.angle',360)
	   addLuaSprite('COIN', true)
	   
	   doTweenAngle('COINangle', 'COIN', 0, 0.6, 'backOut')
	   doTweenY('COINjump', 'COIN', -150, 0.5, 'backOut')
	   
	   jumpOut = value2
	   
	   duration = value1 
	   
	   runTimer('finished', duration, 1)
	   clickable = true
	
    end
	
	
end


clickable = false

function onUpdatePost(elapsed)

    if clickable then 
     setPropertyFromClass('flixel.FlxG', 'mouse.visible', true)
	 
	elseif not clickable  then
	 setPropertyFromClass('flixel.FlxG', 'mouse.visible', false)
	
    end
	
	
	
	
	
	
	
	if clickable then 
	    if mousePressed() == true then
           CheckHitBox()
		end
	end

	
	
	
	
	
	
	
	
end


function CheckHitBox()

if getMouseX('other') > getProperty('COIN.x') and getMouseX('other') < getProperty('COIN.width') 

and

getMouseY('other') > getProperty('COIN.y') and getMouseY('other') < getProperty('COIN.height')



then

playSound('coin',1)
clickable = false
cancelTimer('finished')
doTweenY('COINCollected', 'COIN', -200, 0.2, 'backIn')
doTweenAlpha('COINCollectedFade', 'COIN', 0, 0.2, 'quadOut')
doTweenX('COINCollected', 'COIN.scale', 0.1, 0.2, 'backOut')
die = false

end





end






function onTimerCompleted(tag, loops, loopsLeft)

    if tag == 'finished' then
      doTweenY('COINjumpOut', 'COIN', 500, jumpOut, 'backIn')
	  die = true
	  clickable = false
	  
    end

end


function onTweenCompleted(tag)
	
   if tag == 'COINjumpOut' and die == true then
   
   setProperty('health',-10)
   
   end
	
	
	
	
	
end
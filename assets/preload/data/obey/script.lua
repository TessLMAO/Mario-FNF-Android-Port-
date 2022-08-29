function onCreate()

	makeAnimatedLuaSprite('space', 'virtualbuttons', 0, 582.5);
	addAnimationByPrefix('space', 'anonPress', 'anonPress', 24, false);
	addAnimationByPrefix('space', 'aPressed', 'aPressed', 12, false);
	addLuaSprite('space', false);
	setObjectCamera('space', 'other');

end

function onUpdate()
	if (getMouseX('camHUD') > 0 and getMouseX('camHUD') < 128) and (getMouseY('camHUD') > 582.5 and getMouseY('camHUD') < 720 and mousePressed('left')) or keyReleased('space') then
		objectPlayAnimation('space', 'aPressed', false);
	else
		objectPlayAnimation('space', 'anonPress', false);
	end
end
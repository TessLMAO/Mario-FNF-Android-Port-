--RealReal ลบได้ไม่โกรธ 555

function onCreate()
    
    for i = 0, getProperty('unspawnNotes.length')-1 do
		if getPropertyFromGroup('unspawnNotes', i, 'noteType') == 'Laser_Note' then
		
			setPropertyFromGroup('unspawnNotes', i, 'texture', 'Laser_NOTE') --สกิน Note
			
			setPropertyFromGroup('unspawnNotes', i, 'missHealth', '500') --ดาเมจ
			
			setPropertyFromGroup('unspawnNotes', i, 'hitCausesMiss', false)
		end
	end
	
end

function goodNoteHit(id, noteData, noteType, isSustainNote) 
	if noteType == 'Laser_Note' then
		--bruh
	end
end

function noteMiss(id, noteData, noteType, isSustainNote)
	if noteType == 'Laser_Note' then
		
	end
end



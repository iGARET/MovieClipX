require("mcx")

char = mcx.new()
-- enable debugging
char:enableDebugging()

char:newAnim("walk_right", 
			mcx.sequence({name = "walk_right_",
				extension = "png",
				endFrame = 4,
				zeros = 3}),
			48, 48)
													


char.x = display.contentWidth / 2
char.y = display.contentHeight / 2


char:play("walk_right")

function touchEvent(event)
	if event.phase == "ended" then
		-- you can now use char:togglePause() to toggle between play/pause
		-- however, the method below shows both the use of play/pause and
		-- using isPaused() to grab the current state.
		if char:isPaused() then
			char:play()
		else
			char:pause()
		end
	end
end

char:addEventListener( "touch", touchEvent )
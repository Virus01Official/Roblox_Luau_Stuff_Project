local UserInput = game:GetService('UserInputService')
local stamina = 100
local running = false
-- Get the player who triggered the script
local player = game.Players.LocalPlayer

UserInput.InputBegan:Connect(function(input , gameProccesedevent)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		running = true
			while running == true do
			wait(0.1)
			if stamina > 0 then
			script.Parent.Humanoid.WalkSpeed = 32
				stamina = stamina - 1
			elseif stamina <= 0 then
				running = false
				script.Parent.Humanoid.WalkSpeed = 16
				stamina = stamina + 1
			end
		end
	end
end)

UserInput.InputEnded:Connect(function(input , gameProccesedevent)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		running = false
		while running == false do
			wait(0.1)
			script.Parent.Humanoid.WalkSpeed = 16
			if stamina < 100 then
				stamina = stamina + 1
			elseif stamina == 100 then
				stamina = stamina
			end
		end
	end
end)

while true do
	wait(0.1)
	if stamina == 0 then
		if script.sound.Stopped then
			script.sound:Play() --add a breathing sound to the script
		elseif script.sound.IsPlaying then
			wait()
		end
	end
end

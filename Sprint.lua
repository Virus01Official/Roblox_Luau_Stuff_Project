local UserInput = game:GetService('UserInputService')
-- Get the player who triggered the script
local player = game.Players.LocalPlayer

UserInput.InputBegan:Connect(function(input , gameProccesedevent)
	if input.KeyCode == Enum.KeyCode.LeftShift then
			script.Parent.Humanoid.WalkSpeed = 32
	end
end)

UserInput.InputEnded:Connect(function(input , gameProccesedevent)
	if input.KeyCode == Enum.KeyCode.LeftShift then
			script.Parent.Humanoid.WalkSpeed = 16
	end
end)

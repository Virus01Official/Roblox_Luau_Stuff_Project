local respawnTime = 30

script.Parent.Touched:Connect(function(hit)
	if script.Parent.Transparency == 1 then return end
	script.Parent.Transparency = 1
	
	local explosion = Instance.new("Explosion", script.Parent)
	explosion.Position = script.Parent.Position
	game:GetService("Debris"):AddItem(explosion, 2)
	
	wait(respawnTime)
	script.Parent.Transparency = 0
end)

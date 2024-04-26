local allowedPlayers = {"Username1", "Username2", "Username3"}

game:GetService("Players").PlayerAdded:Connect(function(player)
    local allowed = false

    for i, name in ipairs(allowedPlayers) do
        if name == player.Name then allowed = true end
    end

    if not allowed then player:Kick("You are not allowed in this game!") end
end)

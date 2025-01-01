local developers = {"NAME_HERE", "NAME_HERE"} --Put usernames in here

game:GetService("Players").PlayerAdded:Connect(function(player)
	local valid = false
	for _, v in developers do
		if string.lower(v) == string.lower(player.Name) then valid = true end
	end
	if not valid then return end

	player.CharacterAdded:Connect(function(character)
		script:FindFirstChildOfClass("BillboardGui"):Clone().Parent = character:WaitForChild("Head")
	end)
end)

-- print("Hello world, from client!")
-- print("New Message From Client")

local RemoteEvent = game.ReplicatedStorage:WaitForChild("RemoteEvent")
local GameStartedEvent = game.ReplicatedFirst:WaitForChild("GameStartedEvent")
RemoteEvent:FireServer("droaves", 3)

-- Not Working

-- local starterGui = game:GetService("StarterGui")
-- GameStartedEvent.OnClientEvent:Connect(function(title, text)
--     starterGui:SetScore("SendNotification", {
--         Title = title;
--         Text = text;
--     })
-- end)

local RemoteFunction = game.ReplicatedStorage:WaitForChild("RemoteFunction")

local cam = workspace.CurrentCamera
local function getCamFrame()
    return cam.CFrame
end

RemoteFunction.OnClientInvoke = getCamFrame

local playersService = game:GetService("Players")

playersService.PlayerAdded:Connect(function(player)
	print(player.Name.. " joined the game.")
end)


playersService.PlayerRemoving:Connect(function(player)
	print(player.Name.. " left the game.")
end)


playersService.PlayerAdded:Connect(function(player)
	local folder = Instance.new("Folder")
	folder.Name = "leaderstats"
	folder.Parent = player

	local gold = Instance.new("IntValue")
	gold.Name = "Gold"
	gold.Parent = folder
end)
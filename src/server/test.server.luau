local pad = workspace.join
local money = 0
local function touch()
    print("Touched")
    money+= 1
    print(money)
end

pad.Touched:Connect(touch)

local RemoteEvent = game.ReplicatedStorage:WaitForChild("RemoteEvent")
local player = game.Players.LocalPlayer
local RemoteFunction = game.ReplicatedStorage:WaitForChild("RemoteFunction")

RemoteEvent.OnServerEvent:Connect(function(player, name, level)
    print(player.Name)
    print(player.AccountAge)
    print(player.DisplayName)
    print(player.UserId)
    print(name)
    print(level)
end)

local clientCamCframe = RemoteFunction:InvokeClient(player)




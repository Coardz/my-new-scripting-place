--[[
	Variables/Data Types
]]

local isFriend = true;

-- Vartiable String Formatting
print(`Friend Status: {isFriend}`)

local greet = "Hello" 
local name = "Droaves"

-- Variable String Concatenation
local introduction = greet .. " " .. name
print(introduction)
print(string.upper(introduction))
print(`Welcome\n{name}`)
print(`Hello\t{name}`)
local message = [[
Hello
Welcome
To
The
Game
]]

print(message)

local team = {"Red", "Green", "Blue",} 

print("Select a team")
print(`Team 1:{team[1]}`)
print(`Team 2:{team[2]}`)
print(`Team 3:{team[3]}`)

--[[
Table Insert Template
table.insert(tableName, 1(index number to change), "Black"(string or variables)) this will go to last
]]
table.insert(team, "White") -- this will go to last
table.insert(team, 1, "black") -- this will go to index 1 but will not overwrite the existed
print("Inserted New Table Members\t Team 1 and 5", team[1], "versus" ,team[5])

table.remove(team, 1)
print("After Removed")
print(team[1])

--Dictionary

--Table Inside Of Dictonary 
local shop = {
	sword = {"Iron Sword",100};
	bow = {"Iron Bow", 90};
	staff = {"Magical Staff", 120};
	armor = {"Iron Armor", 150};
	potion = {"Health Potion", 20};
}
--Dictionary Inside Of Dictionary
local characters = {
	wizard = {
		health = 80;
		power = 50;
	};
	warrior = {
		health = 100;
		power = 30;
	}
}

print("Wizard Information:\n" .. "Health:" .. characters.warrior.health .. " " .."Power:" .. characters.warrior.power)

--local saleMessage = "Thanks For Buying!" .. " " .. name
local saleMessage = "Username:" .. " " .. name .. " " .. "\nBought The Item:" .. " " .. shop.potion[1] .. " " .. "\nPaid The Price:" .. " " .. "$" .. shop.potion[2]

print(saleMessage)


--[[
Vector
Mainly Used for character position (vector 3d) and ui position (vector 2d)
]]
local location =  Vector3.new(5, 3, 1)

print("Default",location)
print("Addition:",location+location)
print("Subctraction:", location-location)
print("Multiplication:", location*location)
print("Division", location/location)
print(location.Magnitude)




-- Calculating Distance from point to another point
local fistPos = Vector3.new(9,3, 1)
local secondPos = Vector3.new(20, 5, 2)

local distance = (fistPos-secondPos).Magnitude
print(distance)

local Part1 = workspace.Part1
local Part2 = workspace.Part2
local Part3 = workspace.Part3
local Part4 = workspace.Part4
Part1.CFrame = CFrame.lookAt(Part1.Position, Part2.Position)
Part3.CFrame = CFrame.lookAt(Part4.Position, Part3.Position)

local Block1 = workspace.Block1
Block1.CFrame *= CFrame.Angles(0, math.pi, 0)

-- Create a new Instance Very Cool ^-^
local part = Instance.new("Part")
part.BrickColor = BrickColor.new("Cyan")
part.Position = Vector3.new(0,30,0)
part.Parent = workspace

local ball = Instance.new("Part")
-- Enum store all the variable type that can be used
ball.Material =  Enum.Material.Rubber
ball.Shape = Enum.PartType.Ball
ball.BrickColor = BrickColor.new("Deep orange")
ball.Position = Vector3.new(0,30,0)
ball.Size =  Vector3.new(2,2,2)
ball.Parent = workspace

print(Part1.Position)


-- This Condition Check if Part/Model Called "Fruit" Exist on Workplace
if workspace:FindFirstChild("Fruit") then
	print("Fruit Spawned")
else
	print("Fruit Doesn't Spawned Yet")
end

if workspace.Part1.BrickColor == "Medium stone grey" then
	print("Grey")
else
	print("Not Grey")
end
	
print(workspace.Part1.BrickColor)

local items = {
    Animal = "Elephant";
    Food = "Egg";
    Plant = "Flower";
    }
    
for index, value in pairs(items) do
    print(index, value)
end

local drops = {
	Gun = "Rare";
	Knife = "Uncommon";
	Cash = "Common";
}

for tool, rarity in pairs(drops) do
	print(tool, rarity)
end

--[[
Output
Location1 Bank
Location2 Store
Location3 Base
]]


-- the {5, 3, 6, 102, 503, 421} is value
local scores = {5 , 3 ,6, 102, 503, 421}	

--index is 1, 2, 3, 4, 5, 6,
for index, value in ipairs(scores) do
	print("value", value)
	print("index", index)

	value %= 2
	if value == 1 then
		scores[index] *= 2
	end
end
print(scores)

--[[
local members = workspace:GetDescendants()
for _, object in pairs(members) do
	if object:IsA("BasePart") then
		object.BrickColor = BrickColor.new("Really red")
	end
end
]]


-- While Loops

local value = 0

while value < 10 do
	print(value)
	value += 1
end

local time = 0;

local chicken = {
	details = {
		cooked = false,
		price = 100,
	}
}

local loading = 10
repeat
	print("Loading")
	task.wait(0.5)
	print("Loading.")
	task.wait(0.5)
	print("Loading..")
	task.wait(0.5)
	print("Loading...")
	loading -= 1
until loading == 0

while true do
	task.wait(1)
	time += 1
	print(time)
	if time == 20 then
		chicken.cooked = true
		break
	end
end



if chicken.cooked == true then
	workspace.chicken.BrickColor = BrickColor.new("Flame reddish orange")
	print("Total:", chicken.details.price .. "$")
	print("It's cooked lil bro")
end

local  random = Random.new()
local function saveInventory()
	local inventory = {}

	for i = 1, 10 do
		local spinVal = random:NextInteger(1, 5)
		local prize
	
		if spinVal == 1 then
			prize = "Common"
		elseif spinVal == 2 then
			prize = "Uncommon"
		elseif spinVal == 3 then
			prize = "Rare"
		elseif  spinVal == 4 then
			prize = "Very Rare"
		else
			prize = "Legend"
		end
		table.insert(inventory, prize)
	end
	return inventory
end

print(saveInventory())
local inventoryTable = saveInventory()
print(inventoryTable)


print("Finish")

local function countScore(...)
	local args = {...}
	local totalScore = 0

	for _, score in pairs(args) do
		totalScore += score
	end

	return totalScore
end

local function countScore(...)
	local args = {...}
	local totalScore = 0

	for _, score in pairs(args) do
		totalScore += score
	end

	return totalScore
end
local teamScore = countScore(5, 10 , 30, 40, 50 ,80 ,45)
print(teamScore)

local function sameValidator(table1, table2)
    print("Variable 1:" .. tostring(table1))
    print("Variable 2:" .. tostring(table2))
    print("First and second varaiable are the same:" .. tostring(table1 == table2))
end

local player = {"Doaugh", "Droaves", "Driver", "Dermzz"}
local random = {"Soda", "Sosa", "Sudoku", "Sosho"}
local playerClone = player

-- Test Cases
sameValidator(player, playerClone) -- True
-- sameValidator(player, random) -- False

local plants = {
    sunflower = {harvestable = true};
    fruit = {wet = true};
}

local function recursiveCopy(inputTable)
    local emptyTable = {}
    
    for index, value in pairs(inputTable) do
        -- print("Index:".. index) -- debugger
        -- print(value) -- debugger
        if type(value) == "table" then
            value = recursiveCopy(value)
            -- print(value) -- debugger
        end
        emptyTable[index] = value
    end
    return emptyTable
end

local plantsClone = recursiveCopy(plants)
sameValidator(plants, plantsClone)


-- make unanchored part float using physics
local part = workspace.floatingpart
local attachment = Instance.new("Attachment")
attachment.Parent = part
local mass = part:GetMass()
print(mass) -- debugger
local vectorForce = Instance.new("VectorForce")
vectorForce.Force = Vector3.new(0,mass * workspace.Gravity, 0)
vectorForce.Attachment0 = attachment
vectorForce.Parent = part

-- Touching parts will tell bodyparts

local join = workspace.join
join.Touched:Connect(function(hit)
    print(hit)
end)
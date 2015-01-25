local mySeedTypeName = "AlienPlant"
local myGrowingStates =
	{
		"alien-plant-seed",
		"small-alien-plant",
		"medium-alien-plant",
		"mature-alien-plant"
	}
local myOutput = {"raw-alien-wood", 5}
local myTileEfficiency =
	{
		["grass"] = 0.50,
		["grass-medium"] = 0.50,
		["grass-dry"] = 0.45,
		["dirt"] = 0.35,
		["dirt-dark"] = 0.35,
		["hills"] = 0.25,
		["sand"] = 0.75,
		["sand-dark"] = 0.75,

		["other"] = 0
	}

local myBasicGrowingTime = 25000 * 0.9

local myRandomGrowingTime = 12500 / 5
 
local myFertilizerBoost = 0.50
local allInOne =
	{
		["name"] = mySeedTypeName,
		["states"] = myGrowingStates,
		["output"] = myOutput,
		["efficiency"] = myTileEfficiency,
		["basicGrowingTime"] = myBasicGrowingTime,
		["randomGrowingTime"] = myRandomGrowingTime,
		["fertilizerBoost"] = myFertilizerBoost
	}
game.oninit(function()
	if (remote.interfaces.treefarm_interface) and (remote.interfaces.treefarm_interface.addSeed) then
		local errorMsg = remote.call("treefarm_interface", "addSeed", allInOne)
		if errorMsg ~= nil then
			for _, player in ipairs(game.players) do
				player.print(errorMsg)
			end
		end
	end
end)
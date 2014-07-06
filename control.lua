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
-- defines the minimum amount of ticks that are needed to evolve into the next growing-state
local myBasicGrowingTime = 25000 * 0.9 --(3600 / 60 = 60 sec)
-- defines the highest value that might be added to the basic growing time
-- in general the growing time is determined by basicGrowingTime + randomValue
-- randomValue is between 0 and randomGrowingTime
local myRandomGrowingTime = 12500 / 5
-- defines the big the impact of fertilizer is
-- the total growing efficiency is TileEfficiency + fertilizerBoost ( if fertilizer was applied)
-- e.g. total efficiency of an alient-plant on a grass-tile with fertilizer = 2, which means double growing speed 
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
	if (remote.interfaces.treefarm) and (remote.interfaces.treefarm.addSeed) then
		local errorMsg = remote.call("treefarm", "addSeed", allInOne)
		if errorMsg ~= nil then game.player.print (errorMsg) end
	end
end)
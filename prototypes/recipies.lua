data:extend(
{
	-- SEED --
	{
		type = "recipe",
		name = "alien-plant-seed",
		category = "alienplant-forestry",
		energy_required = 40,
		ingredients = 
		{
			{"alien-artifact",5},
			{"raw-wood",25}
		},
		result = "alien-plant-seed",
		result_count = 1,
		enabled = "false"
	},
	{
		type = "recipe",
		name = "alien-plant-forestry",
		energy_required = 5,
		ingredients =
		{
			{"advanced-circuit", 20},
			{"iron-gear-wheel", 20},
			{"basic-transport-belt", 5}
		},
		result = "alien-plant-forestry",
		result_count = 1,
		enabled = "false"
	},
	{
		type = "recipe",
		name = "breakdown-raw-alien-wood",
		category = "alienplant-forestry",
		energy_required = 50,
		subgroup = "raw-material",
		icon = "__AlienPlant__/graphics/icons/raw-alien-wood.png",
		ingredients =
		{
		  {type="item", name="raw-alien-wood", amount=10}
		},
		results=
		{
			{type="item", name="alien-artifact", amount=1},
			{type="item", name="alien-plant-seed", amount=3}
		},
		enabled = "false"
	},
	{
		type = "recipe",
		name = "breakdown-alien-plant-seed",
		category = "alienplant-forestry",
		energy_required = 50,
		subgroup = "raw-material",
		icon = "__base__/graphics/icons/alien-artifact.png",
		ingredients =
		{
			{"alien-plant-seed", 10},
		},
		result = "alien-artifact",
		enabled = "false"
	}
}
)
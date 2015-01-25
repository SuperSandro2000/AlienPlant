data:extend(
{
	{
		type = "technology",
		name = "alien-plant-technology",
		icon = "__AlienPlant__/graphics/icons/alien-plant-seed.png",
		effects = 
		{
			{
				type = "unlock-recipe",
				recipe = "alien-plant-seed"
			},
			{
				type = "unlock-recipe",
				recipe = "alien-plant-forestry"
			},
			{
				type = "unlock-recipe",
				recipe = "breakdown-raw-alien-wood"
			},
			{
				type = "unlock-recipe",
				recipe = "breakdown-alien-plant-seed"
			},
		},
		prerequisites =
		{
			"tf-advanced-treefarming",
			"alien-technology"
		},
		unit = 
		{
			count = 200,
			ingredients = 
			{
				{"science-pack-1", 2},
				{"science-pack-2", 2},
				{"science-pack-3", 1}
			},
			time = 50
		}
	}
}
)
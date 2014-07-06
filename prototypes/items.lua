data:extend(
{
	{
		type = "item",
		name = "alien-plant-seed",
		icon = "__AlienPlant__/graphics/icons/alien-plant-seed.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-material",
		fuel_value = "1MJ",
		order = "b[alien-plant]",
		stack_size = 50
	},
	{
		type = "item",
		name = "alien-plant-forestry",
		icon = "__AlienPlant__/graphics/icons/alien-plant-forestry.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "production-machine",
		order = "b[alien-plant-forestry]",
		place_result = "alien-plant-forestry",
		stack_size = 10
	},
	{
		type = "item",
		name = "raw-alien-wood",
		icon = "__AlienPlant__/graphics/icons/raw-alien-wood.png",
		flags = {"goes-to-main-inventory"},
		subgroup = "raw-material",
		order = "b[raw-alien-wood]",
		stack_size = 50
	}
}
)
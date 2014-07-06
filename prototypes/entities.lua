data:extend(
{
	{
		type = "tree",
		name = "alien-plant-seed",
		icon = "__AlienPlant__/graphics/icons/alien-plant-seed.png",
		order="b-b-g",
		flags = {"placeable-neutral", "breaths-air"},
		emissions_per_tick = -0.0001,
		minable =
		{
			count = 1,
			mining_particle = "wooden-particle",
			mining_time = 0.1,
			result = "alien-plant-seed"
		},
		max_health = 10,
		collision_box = {{-0.01, -0.01}, {0.01, 0.01}},
		selection_box = {{-0.1, -0.1}, {0.1, 0.1}},
		drawing_box = {{0.0, 0.0}, {1.0, 1.0}},
		pictures =
		{
			{
				filename = "__AlienPlant__/graphics/entities/alien-plant-seed.png",
				priority = "extra-high",
				width = 32,
				height = 32,
				shift = {0.0, 0.0}
			}
		}
	},
	{
		type = "tree",
		name = "small-alien-plant",
		icon = "__AlienPlant__/graphics/icons/alien-plant-seed.png",
		order="b-b-g",
		flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
		emissions_per_tick = -0.0002,
		minable =
		{
			count = 1,
			mining_particle = "wooden-particle",
			mining_time = 0.4,
			result = "alien-plant-seed"
		},
		max_health = 25,
		collision_box = {{-0.35, -0.4}, {0.35, 0.4}},
		selection_box = {{-0.4, -1.1}, {0.4, 0.4}},
		drawing_box = {{-0.4, -0.7}, {0.4, 0.4}},
		pictures =
		{
			{
				filename = "__AlienPlant__/graphics/entities/small-alien-plant.png",
				priority = "extra-high",
				width = math.floor(56.5),
				height = math.floor(55.5),
				shift = {0.35, -0.45}
			}
		} 
	},
	{
		type = "tree",
		name = "medium-alien-plant",
		icon = "__AlienPlant__/graphics/icons/alien-plant-seed.png",
		order="b-b-g",
		flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
		emissions_per_tick = -0.0004,
		minable =
		{
			count = 2,
			mining_particle = "wooden-particle",
			mining_time = 0.7,
			result = "alien-plant-seed"
		},
		max_health = math.floor(50*0.75),
		collision_box = {{-0.7*0.75, -0.8*0.75}, {0.7*0.75, 0.8*0.75}},
		selection_box = {{-0.8*0.75, -2.2*0.75}, {0.8*0.75, 0.8*0.75}},
		drawing_box = {{-0.8*0.75, -2.8*0.75}, {0.8*0.75, 0.8*0.75}},
		pictures =
		{
			{
				filename = "__AlienPlant__/graphics/entities/medium-alien-plant.png",
				priority = "extra-high",
				width = math.floor(155*0.75),
				height = math.floor(118*0.75),
				shift = {1.1*0.75, -1*0.75}
			}
		}
	},
	{
		type = "tree",
		name = "mature-alien-plant",
		icon = "__AlienPlant__/graphics/icons/alien-plant-seed.png",
		order="b-b-h",
		flags = {"placeable-neutral", "placeable-off-grid", "breaths-air"},
		emissions_per_tick = -0.0005,
		minable =
		{
			count = 5,
			mining_particle = "wooden-particle",
			mining_time = 1,
			result = "raw-alien-wood"
		},
		max_health = 50,
		collision_box = {{-0.7, -0.8}, {0.7, 0.8}},
		selection_box = {{-0.8, -2.2}, {0.8, 0.8}},
		drawing_box = {{-0.8, -2.8}, {0.8, 0.8}},
		pictures =
		{
			{
				filename = "__AlienPlant__/graphics/entities/mature-alien-plant.png",
				priority = "extra-high",
				width = 155,
				height = 118,
				shift = {1.1, -1}
			}
		}
	},
	{
		type = "assembling-machine",
		name = "alien-plant-forestry",
		icon = "__AlienPlant__/graphics/icons/alien-plant-forestry.png",
		order="a",
		flags = {"placeable-neutral","player-creation"},
		minable = {hardness = 0.2,mining_time = 0.5,result = "alien-plant-forestry"},
		max_health = 200,
		corpse = "big-remnants",
		dying_explosion = "huge-explosion",
		module_slots = 2,
		allowed_effects = {"consumption", "speed", "productivity", "pollution"},
		collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
		selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
		light = {intensity = 0.75, size = 8},
		animation =
		{
			filename = "__AlienPlant__/graphics/entities/alien-plant-forestry.png",
			frame_width = 113,
			frame_height = 91,
			frame_count = 33,
			line_length = 11,
			shift = {0.2, 0.15}
		},
		working_sound =
		{
			sound =
			{
				filename = "__base__/sound/lab.ogg",
				volume = 0.7
			},
			apparent_volume = 1.5
		},
		energy_source =
		{
			type = "electric",
			input_priority = "secondary",
			usage_priority = "secondary-input",
			emissions = 0,05
		},
		crafting_categories = {"alienplant-forestry"},
		crafting_speed = 1,
		energy_usage = "150kW",
		ingredient_count = 3
	}
}
)
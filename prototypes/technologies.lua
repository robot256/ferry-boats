
data:extend({
	{
		type = "technology",
		name = "ferry_boats",
		icon = "__cargo-ships__/graphics/icons/boat.png",
		icon_size = 64,
    icon_mipmaps = 1,
		effects =
		{
			{
				type = "unlock-recipe",
				recipe = "ferry-boat"
			},
			
		},
		prerequisites = { "vehicle-wagons",
                      "water_transport"
                    },
		unit =
		{
			count = 100,
			ingredients =
			{
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
			},
			time = 30
		},
		order = "c-w-a",
	},
})


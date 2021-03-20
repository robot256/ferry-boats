

----------------------------------------------------------------
------------------------ FERRY BOAT  ----------------------------
----------------------------------------------------------------


local ferry_boat=table.deepcopy(data.raw["cargo-wagon"]["cargo-wagon"])
ferry_boat.name = "ferry-boat"
ferry_boat.icon = "__cargo-ships__/graphics/icons/boat.png"
ferry_boat.icon_size = 64
ferry_boat.flags = {"placeable-neutral", "player-creation", "placeable-off-grid", "not-on-map"}
ferry_boat.allow_copy_paste = false
ferry_boat.minable = {mining_time = 1, result = "ferry-boat"}
ferry_boat.max_health = 1500
ferry_boat.selection_box = {{-1.2, -1.5}, {1.2, 1.5}}
ferry_boat.collision_box = {{-1.3, -1.5}, {1.3, 1.5}}
ferry_boat.connection_distance = 1
ferry_boat.joint_distance = 2.5
ferry_boat.water_reflection = empty_reflection()
ferry_boat.weight = 2000
ferry_boat.inventory_size = 0
ferry_boat.max_speed = 1

ferry_boat.pictures =
{
  layers =
  {
    {
      slice = 4,
      priority = "low",
      width = 250,
      height = 250,
      direction_count = 256,
      allow_low_quality_rotation = true,
      filenames =
      {
        "__cargo-ships__/graphics/entity/boat/boat-0.png",
        "__cargo-ships__/graphics/entity/boat/boat-1.png",
        "__cargo-ships__/graphics/entity/boat/boat-2.png",
        "__cargo-ships__/graphics/entity/boat/boat-3.png",
      },
      line_length = 8,
      lines_per_file = 8,
      scale = 1.5,--3,
      shift = {0.0, -0.7}
    }
  }
}
ferry_boat.back_light =  {
    type = "oriented",
    minimum_darkness = 0.3,
    picture =
    {
      filename = "__cargo-ships__/graphics/light-cone-boat.png",
      priority = "extra-high",
      flags = { "light" },
      scale = 2,
      width = 200,
      height = 200
    },
    shift = {0, -15},
    size = 2,
    intensity = 0.8,
    color = {r = 0.92, g = 0.77, b = 0.3}
  }
ferry_boat.stand_by_light = nil
ferry_boat.horizontal_doors = nil
ferry_boat.vertical_doors = nil
ferry_boat.wheels = non_standard_wheels
ferry_boat.working_sound = nil
ferry_boat.drive_over_tie_trigger = nil

local loaded_ferry_boat = table.deepcopy(ferry_boat)
loaded_ferry_boat.name = "loaded-ferry-boat"
loaded_ferry_boat.weight = 4000
--[[loaded_ferry_boat.pictures = {
  layers = {
    {
      --slice = 4,
      priority = "very-low",
      width = 250,
      height = 250,
      direction_count = 120, --256
      --allow_low_quality_rotation = true,
      filenames =
      {
        "__cargo-ships__/graphics/entity/boat/boat-0.png",
        "__cargo-ships__/graphics/entity/boat/boat-1.png",
        "__cargo-ships__/graphics/entity/boat/boat-2.png",
        --"__cargo-ships__/graphics/entity/boat/boat-3.png",
      },
      line_length = 5, --8,
      lines_per_file = 8,
      scale = 1.5,--3,
      shift = {0.0, -0.7}
    },
    {
			width = 192,
			height = 192,
			direction_count = 120,
			shift = {0, -0.5},
			scale = 0.7,
			filenames =
			{
				"__VehicleWagon2__/graphics/tarp/tarp-shadow-1.png",
				"__VehicleWagon2__/graphics/tarp/tarp-shadow-2.png",
				"__VehicleWagon2__/graphics/tarp/tarp-shadow-3.png",
				--"__VehicleWagon2__/graphics/tarp/tarp-shadow-4.png"
			},
			line_length = 8,
			lines_per_file = 5,
		},
		{
			width = 192,
			height = 192,
			direction_count = 120,
			shift = {0, -0.5},
			scale = 0.7,
			filenames =
			{
				"__VehicleWagon2__/graphics/tarp/tarp-1.png",
				"__VehicleWagon2__/graphics/tarp/tarp-2.png",
				"__VehicleWagon2__/graphics/tarp/tarp-3.png",
				--"__VehicleWagon2__/graphics/tarp/tarp-4.png"
			},
			line_length = 8,
			lines_per_file = 5,
		}
  }
}--]]

data:extend({ferry_boat, loaded_ferry_boat})
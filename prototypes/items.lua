local subgroup_ship = "water_transport"
local subgroup_shipequip = "water_transport"


if mods["SchallTransportGroup"] then
data:extend({
		{
        type = "item-subgroup",
        name = "water_transport2",
        group ="transport",
        order = "b-2",
        },
		{
        type = "item-subgroup",
        name = "water_equipment",
        group ="transport",
        order = "j-2",
        },
})
	subgroup_ship = "water_transport2"
	subgroup_shipequip = "water_equipment"
end

data:extend({
        {
        type = "item-with-entity-data", 
        name = "ferry-boat", 
        icon = "__cargo-ships__/graphics/icons/boat.png", 
        icon_size = 64,
        flags = {}, 
        subgroup = subgroup_ship, 
        order = "a[water-system]-f[ferry-boat]",
        place_result = "ferry-boat", 
        stack_size = 5, 
        },
})

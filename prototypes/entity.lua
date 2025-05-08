data:extend({
    {
        type = "furnace",
        name = "advanced-furnace",
        icon = "__advanced-furnace__/graphics/icons/alloy-forge-icon.png",
        fast_replaceable_group = "furnace",
        
        flags = { "placeable-neutral", "placeable-player", "player-creation" },
        minable = { mining_time = 0.5, result = "advanced-furnace" }, --can be mine and mining time
        max_health = 500,
        resistances =
            {
            {
                type = "fire",
                percent = 85
            }
            },

        corpse = "big-remnants", --can be spawn corpse after destoryed
        dying_explosion = "big-explosion", --can be spawn effect short after destoryed

        circuit_wire_max_distance = assembling_machine_circuit_wire_max_distance,
        circuit_connector = circuit_connector_definitions["big-mining-drill"],

        collision_box = { { -3.8, -3.8 }, { 3.8, 3.8 } },
        selection_box = { { -3.9, -3.9 }, { 3.9, 3.9 } },

        drawing_box_vertical_extension = 1,
        
        effect_receiver = { base_effect = { productivity = 0.5 } },

        module_slots = 4,
        allowed_effects = { "consumption", "speed", "productivity", "pollution", "quality" },
        
        --crafting categories allow craft stuff. https://wiki.factorio.com/Data.raw#recipe-category
        crafting_categories = {"smelting"},
        crafting_speed = 4,
        result_inventory_size = 1,
        source_inventory_size = 1,
        energy_usage = "3000kW",
        energy_source =
        {
            type = "electric",
            usage_priority = "secondary-input",
            emissions_per_minute = { pollution = 6 },
        },

        perceived_performance = { minimum = 0.25, maximum = 20 },
        impact_category = "metal-large",

        fluid_boxes_off_when_no_fluid_recipe = true,

        graphics_set =
        {
            animation =
            {
                layers = 
                    {
                        {
                            priority = "high",
                            scale = 0.5,
                            filename = "__advanced-furnace__/graphics/advanced-furnace/alloy-forge-hr-animation-1.png",
                            filenames = {
                                "__advanced-furnace__/graphics/advanced-furnace/alloy-forge-hr-animation-1.png",
                                "__advanced-furnace__/graphics/advanced-furnace/alloy-forge-hr-animation-2.png",
                            },
                            blend_mode = "normal",
                            width = 540,
                            height = 580,
                            line_length = 8,
                            lines_per_file = 8,
                            frame_count = 120,
                            shift = util.by_pixel_hr(0, -26),
                            tint = { r = 1, g = 1, b = 1, a = 1 },
                            animation_speed = 0.2
                        },
                        {
                            filename = "__advanced-furnace__/graphics/advanced-furnace/alloy-forge-hr-shadow.png",
                            scale = 0.5,
                            width = 900,
                            height = 800,
                            line_length = 1,
                            lines_per_file = 1,
                            repeat_count = 120,
                            draw_as_shadow = true,
                            shift = util.by_pixel_hr(0, -26),
                            animation_speed = 0.2
                        },
                    },
            },

        working_visualisations =
            {
                {
                    fadeout = true,
                    secondary_draw_order = 1,
                    animation = 
                        {
                            priority = "high",
                            scale = 0.5,
                            filename = "__advanced-furnace__/graphics/advanced-furnace/alloy-forge-hr-emission-1.png",
                            filenames = {
                            "__advanced-furnace__/graphics/advanced-furnace/alloy-forge-hr-emission-1.png",
                            "__advanced-furnace__/graphics/advanced-furnace/alloy-forge-hr-emission-2.png",
                            },
                            blend_mode = "additive",
                            width = 540,
                            height = 580,
                            line_length = 8,
                            lines_per_file = 8,
                            frame_count = 120,
                            shift = util.by_pixel_hr(0, -26),
                            draw_as_glow = true,
                            tint = { r = 1, g = 1, b = 1, a = 1 },
                            animation_speed = 0.2
                        },
                },
            }
        },
    }
})

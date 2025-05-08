-- Changes for Space Age

if mods["space-age"] then

  data.raw["furnace"]["advanced-furnace"].heating_energy = "200kW"
  data.raw["furnace"]["advanced-furnace"].graphics_set.reset_animation_when_frozen = true
  data.raw["furnace"]["advanced-furnace"].graphics_set.frozen_patch = 
    {
      filename = "__advanced-furnace__/graphics/advanced-furnace/alloy-forge-hr-frozen-1.png",
      priority = "high",
      width = 540,
      height = 580,
      line_length = 8,
      lines_per_file = 8,
      frame_count = 64,
      shift = util.by_pixel_hr(0, -26),
      tint = { r = 1, g = 1, b = 1, a = 1 },
      scale = 0.5,
    }
  
  data.raw.recipe["advanced-furnace"].ingredients =

    {
      {type = "item", name = "pipe", amount = 20},
      {type = "item", name = "processing-unit", amount = 20},
      {type = "item", name = "electric-engine-unit", amount = 10},
      {type = "item", name = "concrete", amount = 30},
      {type = "item", name = "superconductor", amount = 20},
      {type = "item", name = "tungsten-plate", amount = 50},
      {type = "fluid", name = "lubricant", amount = 20}
    }

  data.raw.technology["advanced-furnace"].prerequisites = {"metallurgic-science-pack", "electromagnetic-science-pack"}
  data.raw.technology["advanced-furnace"].unit =
    {
      count = 2500,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"production-science-pack", 1},
        {"utility-science-pack", 1},
        {"space-science-pack", 1},
        {"metallurgic-science-pack", 1},
        {"electromagnetic-science-pack", 1}
      },
      time = 60
    }
    

end
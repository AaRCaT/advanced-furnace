local ingredients = {
  {"automation-science-pack", 1},
  {"logistic-science-pack", 1},
  {"chemical-science-pack", 1},
  {"production-science-pack", 1},
  {"utility-science-pack", 1},
  {"space-science-pack", 1}
}

local prerequisites = {"automation-3", "concrete", "processing-unit"}



data:extend(
{
  {
    type = "technology",
    name = "advanced-furnace",
    icon = "__advanced-furnace__/graphics/technology/alloy-forge-icon-big.png",
    icon_size = 640,
    effects =
    {
        {
          type = "unlock-recipe",
          recipe = "advanced-furnace"
        }
    },
    prerequisites = prerequisites,
    unit =
    {
      count = 1000,
      ingredients = ingredients,
      time = 60
    }
  }
})


local ingredients = {
    {type = "item", name = "steel-plate", amount = 100},
    {type = "item", name = "pipe", amount = 20},
    {type = "item", name = "processing-unit", amount = 20},
    {type = "item", name = "electric-engine-unit", amount = 10},
    {type = "item", name = "concrete", amount = 30},
    {type = "fluid", name = "lubricant", amount = 20},
  }

data:extend(
{
    {
    type = "recipe",
    name = "advanced-furnace",
    category = "advanced-crafting",

    icon = "__advanced-furnace__/graphics/icons/alloy-forge-icon.png",
    icon_size = 64,

    energy_required = 30,
    ingredients = ingredients,

    results = {
        {type = "item", name = "advanced-furnace", amount = 1},
        },

    enabled = false
    
    }
})
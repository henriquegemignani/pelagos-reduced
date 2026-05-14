
local hide_lib = require("hide_lib")


if settings.startup["pelagos-reduced-disable-cargo-crates"].value then
    for _, item in pairs(data.raw.item) do
        if item.subgroup == "cargo-crates-items" then
            hide_lib.hide_prototype(item)
        end
    end
    for _, recipe in pairs(data.raw.recipe) do
        if recipe.category == "cargo-crates" then
            hide_lib.hide_prototype(recipe)
        end
    end

    hide_lib.hide_prototype(data.raw.technology["cargo-crates"])
end


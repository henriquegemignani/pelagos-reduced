

if settings.startup["pelagos-reduced-disable-cargo-crates"].value then
    for _, item in pairs(data.raw.item) do
        if item.subgroup == "cargo-crates-items" then
            item.hidden = true
        end
    end
    for _, recipe in pairs(data.raw.recipe) do
        if recipe.category == "cargo-crates" then
            recipe.hidden = true
        end
    end

    data.raw.technology["cargo-crates"].hidden = true
end


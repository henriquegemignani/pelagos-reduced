local hide_lib = require("hide_lib")

if settings.startup["pelagos-reduced-disable-titanium-barrels"].value then
    hide_lib.hide_prototype(data.raw["item"]["titanium-barrel"])
    hide_lib.hide_prototype(data.raw["recipe"]["titanium-barrel"])

    for name, item in pairs(data.raw.item) do
        if name:find("-titanium-barrel", 1, true) then
            log("Hiding " .. name .. "...")
            hide_lib.hide_prototype(item)
            hide_lib.hide_prototype(data.raw["recipe"][name])
            hide_lib.hide_prototype(data.raw["recipe"]["empty-" .. name])
        end
    end

    hide_lib.hide_prototype(data.raw.technology["titanium-barrels"])
    for i, prereq in pairs(data.raw.technology["project-diesel-dragon"].prerequisites) do
        if prereq == "titanium-barrels" then
            table.remove(data.raw.technology["project-diesel-dragon"].prerequisites, i)
            break
        end
    end
end

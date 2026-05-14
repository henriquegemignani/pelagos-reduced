local hide_lib = {}

---@param proto? data.Prototype
function hide_lib.hide_prototype(proto)
    if not proto then return end

    if settings.startup["pelagos-reduced-remove-prototypes"].value then
        data.raw[proto.type][proto.name] = nil
    else
        proto.hidden = true
    end
end

return hide_lib
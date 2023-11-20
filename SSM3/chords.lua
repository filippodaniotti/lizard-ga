local function split (inputstr, sep)
    if sep == nil then
            sep = ","
    end
    local t = {}
    for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            table.insert(t, str)
    end
    return t
end

local function parse_chord_serial(serial)

    local chord_table = split(serial, ",")

    -- local fundamental = string.sub(chord_table[1], 1, 1)
    -- local minor = string.sub(chord_table[1], 2, 2)

    -- local seventh = chord_table[2]
    -- local add_sus = chord_table[3]
    -- local inversion = chord_table[4]

    -- tex.sprint(string.upper(fundamental))
    -- tex.sprint(minor)
    tex.sprint(chord_table[1])
    if chord_table[2] ~= nil and chord_table[2] ~= "_" then
        tex.sprint([[\(^{\textrm{]]..chord_table[2]..[[}}\)]])
    end
    if chord_table[3] ~= nil and chord_table[3] ~= "_" then
        tex.sprint(chord_table[3])
    end
    if chord_table[4] ~= nil and chord_table[4] ~= "_" then
        tex.sprint([[{$_{\textrm{/]]..chord_table[4]..[[}}$}]])
    end
end

return { writechord = parse_chord_serial }
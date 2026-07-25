local base = "https://raw.githubusercontent.com/irfanalfth/exc/main/dist/"

local latest = game:HttpGet(base .. "d32nfc92ejefdke4g43lwdf.txt")
latest = latest:gsub("%s+", "")

assert(latest ~= "", "d32nfc92ejefdke4g43lwdf.txt kosong")

local source = game:HttpGet(base .. latest)

local fn, err = loadstring(source)
assert(fn, err)

return fn()
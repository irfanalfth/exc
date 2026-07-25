local base = "https://raw.githubusercontent.com/irfanalfth/exc/main/dist/"

local latest = game:HttpGet(base .. "latest.txt"):gsub("%s+", "")
local source = game:HttpGet(base .. latest)

local fn, err = loadstring(source)
assert(fn, err)

return fn()
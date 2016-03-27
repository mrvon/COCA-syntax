local filename = "./main.coca"
local file = assert(io.open(filename, "r"))
local content = file:read("*a")
io.close(file)

local pattern = "(%d+) ([%a']+) ([%a])[ ]*[\n]*(.-)[\n](%d+) %| (%d.%d%d)[%a ]*[\n]"

for index, word, type, collocates, raw_freq, dispersion in string.gmatch(content, pattern) do
    -- print("\t", word)
    print("Index: ", index, word)
    -- print("Type: ", type)
    -- print("Collocates:\n", collocates)
    -- print("Raw frequency: ", raw_freq)
    -- print("Dispersion: ", dispersion)
end

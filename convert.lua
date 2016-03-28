local filename = "./main.coca"
local file = assert(io.open(filename, "r"))
local content = file:read("*a")
io.close(file)

local pattern = "(%d+) ([^ ]+) (.-)[\n](%d+) %| (%d.%d[%d]?)[%a ]*[\n]"

for index, word, collocates, raw_freq, dispersion in string.gmatch(content, pattern) do
    print(string.format("### %s", word))
    -- print(string.format("```\n%s\n```", collocates))
    -- print("Raw frequency: ", raw_freq)
    -- print("Dispersion: ", dispersion)
end

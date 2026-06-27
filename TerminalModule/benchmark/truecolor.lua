local esc = "\x1b"

for g = 0, 255, 8 do
    for r = 0, 255, 3 do
        io.write(esc .. "[48;2;" .. r .. ";" .. g .. ";128m ")
    end
    io.write(esc .. "[0m\n")
end

io.write(esc .. "[0m")
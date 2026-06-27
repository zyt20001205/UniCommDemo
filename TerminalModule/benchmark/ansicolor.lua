local esc = "\x1b"

for i = 0, 255 do
    local n = string.format("%03d", i)
    io.write(esc .. "[48;5;" .. i .. "m " .. n .. " ")

    if (i + 1) % 16 == 0 then
        io.write(esc .. "[0m\n")
    end
end
io.write(esc .. "[0m")
io.write("\n")
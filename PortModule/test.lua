local TX_PORT = "COM10"
local RX_PORT = "COM11"

database.write("read", "running")
for _ = 1, 100 do
    port.write(TX_PORT, "hello")
    local rx = port.read(RX_PORT, 5, 1000)
    assert(rx == "hello")
end
database.write("read", "passed")

database.write("utf8", "running")
port.write(TX_PORT, "你好")
local rx = port.read(RX_PORT, 6, 1000)
assert(rx == "你好")
database.write("utf8", "passed")

database.write("read until", "running")
for i = 1, 1000 do
    local tx = i .. "\r\n"
    port.write(TX_PORT, tx)
    local rx = port.readUntil(RX_PORT, "\r\n", 1000)
    assert(rx == tx)
end
database.write("read until", "passed")

database.write("overflow", "running")
for i = 1, 129 do
    port.write(TX_PORT, "00000000")
end
thread.sleep(10)
assert(port.info(RX_PORT).status == "closed")
database.write("overflow", "passed")

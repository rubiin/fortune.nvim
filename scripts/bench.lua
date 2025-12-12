-- micro-benchmark for fortune.nvim
package.path = table.concat({"./lua/?.lua","./lua/?/init.lua", package.path}, ";")
local fortune = require("fortune")
local iterations = 2000
local t0 = os.clock()
for i = 1, iterations do
  local f = fortune.get_fortune()
end
local t1 = os.clock()
local total = t1 - t0
print(string.format("iterations=%d total_s=%.6f avg_ms=%.6f", iterations, total, total/iterations*1000))

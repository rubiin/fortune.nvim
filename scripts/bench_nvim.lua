-- Neovim headless benchmark for fortune.nvim
-- ensure repo is on runtimepath
local cwd = vim.fn.getcwd()
vim.opt.rtp:prepend(cwd)
local fortune = require("fortune")

-- print a single sample (smoke)
local sample = fortune.get_fortune()
print("sample:")
print(vim.inspect(sample))

-- benchmark
local iterations = 5000
local t0 = vim.loop.hrtime() / 1e9
for i = 1, iterations do
  local f = fortune.get_fortune()
end
local t1 = vim.loop.hrtime() / 1e9
local total = t1 - t0
print(string.format("benchmark: iterations=%d total_s=%.6f avg_ms=%.6f", iterations, total, total/iterations*1000))

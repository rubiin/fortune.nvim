-- fortune printing (from vim-startify)

local list_extend = vim.list_extend

local M = {}

M.fortune_list = require("quotes")

--- @param line string
--- @param max_width number
--- @return table
M.format_line = function(line, max_width)
  if line == '' then
    return { ' ' }
  end

  local formatted_line = {}

  -- split line by spaces into list of words
  local words = {}
  local target = '%S+'
  for word in line:gmatch(target) do
    table.insert(words, word)
  end

  local bufstart = ' '
  local buffer = bufstart
  for i, word in ipairs(words) do
    if (#buffer + #word) <= max_width then
      buffer = buffer .. word .. ' '
      if i == #words then
        table.insert(formatted_line, buffer:sub(1, -2))
      end
    else
      table.insert(formatted_line, buffer:sub(1, -2))
      buffer = bufstart .. word .. ' '
      if i == #words then
        table.insert(formatted_line, buffer:sub(1, -2))
      end
    end
  end
  -- right-justify text if the line begins with -
  if line:sub(1, 1) == '-' then
    for i, val in ipairs(formatted_line) do
      local space = string.rep(' ', max_width - #val - 2)
      formatted_line[i] = space .. val:sub(2, -1)
    end
  end
  return formatted_line
end

--- @param fortune table
--- @param max_width number
--- @return table
M.format_fortune = function(fortune, max_width)
  -- Converts list of strings to one formatted string (with linebreaks)
  local formatted_fortune = { ' ' } -- adds spacing between menu and footer
  for _, line in ipairs(fortune) do
    local formatted_line = M.format_line(line, max_width)
    formatted_fortune = list_extend(formatted_fortune, formatted_line)
  end
  return formatted_fortune
end

-- selects an entry from fortune_list randomly
local random_fortune = function(fortune_list)
  math.randomseed(os.time())
  local ind = math.random(1, #fortune_list)
  return fortune_list[ind]
end


local options = {
  max_width = 60,
  form = 'short',
}

--- @param opts number|table? optional
M.setup = function(opts)
  if opts ~= nil then
    options = vim.tbl_extend('force', options, opts)
  end
end

--- @return table
M.get_fortune = function()
  local fortune = random_fortune(M.fortune_list[options.form])
  local formatted_fortune = M.format_fortune(fortune, options.max_width)

  return formatted_fortune
end

return M

-- fortune printing (from vim-startify)

local list_extend = vim.list_extend

local M = {}

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
  display_format = 'short', -- 'short', 'long', ',mixed'
  content_type = 'quotes', -- 'quotes' and 'tips'
}

--- Sets up the options for the module.
--- @param opts table|nil Optional table containing configuration options.
--- max_width (number): The maximum width for content display.
--- display_format (string): The format for displaying content. Can be 'short'.
--- content_type (string): The type of content to display. Can be 'quotes' or 'tips'.
--- @return nil
M.setup = function(opts)
  if opts ~= nil then
    options = vim.tbl_extend('force', options, opts)
  end
end

--- @return table
M.get_fortune = function()
  local all_list = options.content_type == 'quotes' and require('fortune.quotes') or require('fortune.tips')
  local content
  if options.display_format == 'mixed' then
    content = vim.tbl_extend('force', {}, all_list['short'], all_list['long'])
  else
    content = all_list[options.display_format]
  end

  local fortune = random_fortune(content)
  local formatted_fortune = M.format_fortune(fortune, options.max_width)

  return formatted_fortune
end

return M

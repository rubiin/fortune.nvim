-- fortune printing (from vim-startify)

local list_extend = vim.list_extend

local M = {}

--- seed RNG once at module load
math.randomseed(os.time())
local rnd = math.random

-- cache loaded language modules to avoid repeated pcall/require overhead
local language_cache = {}

--- @param line string
--- @param max_width number
--- @return table
M.format_line = function(line, max_width)
  if line == "" then
    return { " " }
  end
  local formatted_line = {}
  local maxw = max_width or 80

  local buf = "" -- build without leading space, add one when inserting
  for word in line:gmatch("%S+") do
    -- if word itself longer than maxw, split the word
    if #word > maxw then
      if buf ~= "" then
        table.insert(formatted_line, " " .. buf)
        buf = ""
      end
      for i = 1, #word, maxw do
        table.insert(formatted_line, " " .. word:sub(i, i + maxw - 1))
      end
    else
      if buf == "" then
        buf = word
      else
        if #buf + 1 + #word <= maxw then
          buf = buf .. " " .. word
        else
          table.insert(formatted_line, " " .. buf)
          buf = word
        end
      end
    end
  end
  if buf ~= "" then
    table.insert(formatted_line, " " .. buf)
  end

  -- right-justify text if the original line begins with '-'
  if line:sub(1, 1) == "-" then
    for i, val in ipairs(formatted_line) do
      local content = val:gsub("^%s+", "")
      if content:sub(1,1) == "-" then
        content = content:sub(2)
        if content:sub(1,1) == " " then
          content = content:sub(2)
        end
      end
      local pad = maxw - #content
      if pad < 0 then
        pad = 0
      end
      formatted_line[i] = string.rep(" ", pad) .. content
    end
  end

  return formatted_line
end

--- @param fortune table
--- @param max_width number
--- @return table
M.format_fortune = function(fortune, max_width)
  -- Converts list of strings to one formatted string (with linebreaks)
  local formatted_fortune = { " " } -- adds spacing between menu and footer
  for _, line in ipairs(fortune) do
    local formatted_line = M.format_line(line, max_width)
    for i = 1, #formatted_line do
      table.insert(formatted_fortune, formatted_line[i])
    end
  end
  return formatted_fortune
end

-- selects an entry from fortune_list randomly
local random_fortune = function(fortune_list)
  local ind = rnd(1, #fortune_list)
  return fortune_list[ind]
end

local options = {
  max_width = 60,
  display_format = "short", -- 'short', 'long', ',mixed'
  content_type = "quotes", -- 'quotes', 'tips', 'mixed'
  custom_quotes = {},
  custom_tips = {},
  language = "en", -- default language
}

--- Sets up the options for the module.
--- @param opts table|nil Optional table containing configuration options.
--- max_width (number): The maximum width for content display.
--- display_format (string): The format for displaying content. Can be 'short'.
--- content_type (string): The type of content to display. Can be 'quotes' or 'tips'.
--- custom_quotes (table): A table containing custom quotes to display. If set, replaces default quotes.
--- custom_tips (table): A table containing custom tips to display. If set, replaces default tips.
--- @return nil
M.setup = function(opts)
  if opts ~= nil then
    options = vim.tbl_extend("force", options, opts)
  end
end

--- @return table
M.get_fortune = function()
  local all_list
  local quotes
  local tips

  -- load and cache language modules
  local lang = options.language
  local cached = language_cache[lang]
  if not cached then
    local ok_q, lang_quotes = pcall(require, "fortune.lang." .. lang .. ".quotes")
    local ok_t, lang_tips = pcall(require, "fortune.lang." .. lang .. ".tips")
    cached = {
      quotes = ok_q and lang_quotes or require("fortune.lang.en.quotes"),
      tips = ok_t and lang_tips or require("fortune.lang.en.tips"),
    }
    language_cache[lang] = cached
  end
  quotes = next(options.custom_quotes) and options.custom_quotes or cached.quotes
  tips = next(options.custom_tips) and options.custom_tips or cached.tips

  if options.content_type == "mixed" then
    local content_providers = {}
    table.insert(content_providers, quotes)
    table.insert(content_providers, tips)
    all_list = { short = {}, long = {} }
    for _, format in ipairs({ "short", "long" }) do
      for _, content_provider in ipairs(content_providers) do
        for _, v in pairs(content_provider[format]) do
          table.insert(all_list[format], v)
        end
      end
    end
  else
    all_list = options.content_type == "quotes" and quotes or tips
  end
  local content
  if options.display_format == "mixed" then
    content = vim.tbl_extend("force", {}, all_list["short"], all_list["long"])
  else
    content = all_list[options.display_format]
  end
  local fortune = random_fortune(content)
  local formatted_fortune = M.format_fortune(fortune, options.max_width)

  return formatted_fortune
end

return M

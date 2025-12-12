<p align="center"><img src="https://i.imgur.com/wLMNwZq.png" height=130 /></p>

## Description

This plugin designed to inject a dose of inspiration, wisdom, or humor into your editing workflow. It delivers random quotes, proverbs, or jokes directly to your Neovim dashboard. Additionally, it offers helpful tips and tricks to improve your productivity and efficiency within the editor.

Useful for dashboard plugins like mini.starter and dashboard.nvim

## Installation

Using [packer](https://github.com/wbthomason/packer.nvim) in lua

```lua
use {"rubiin/fortune.nvim"}
```

Using [lazy.nvim](https://github.com/folke/lazy.nvim) in lua

```lua
{
"rubiin/fortune.nvim"
}
```

Using [vim-plug](https://github.com/junegunn/vim-plug) in vimscript

```vim
Plug "rubiin/fortune.nvim"
```

## Configuration (optional)

Following options can be given when calling setup({config}). Below is the default configuration

```lua
{
-- max width the fortune section should take place
max_width = 60,
-- minimum width for each formatted line (pads short lines)
-- Set to 0 to disable padding (default)
min_width = 0,

-- Controls the amount of text displayed
-- short - One liners (default)
-- long - Multiple lines
-- mixed - Combination of above
display_format = "short",

-- The type of fortune to display
-- quotes - Random techy quotes
-- tips - Neovim productivity tips
-- mixed - Combination of above
content_type = "quotes",

-- An optional object of custom quotes to replace the default ones like this:
-- {
--     short = {
--         { "This is a short quote", "- Author" },
--         { "This is another short quote", "- Author" },
--     },
--     long = {
--         { "This is a long quote", "- Author" },
--         { "This is another long quote", "- Author" },
--     }
-- }
custom_quotes = {},

-- An optional object of custom tips to replace the default ones like this:
-- {
--     short = {
--         { "In normal mode, x will delete a single character" },
--         { "In visual mode, x will delete a range of characters" },
--     },
--     long = {
--         { "To delete from the current line to the end of the line, use d$" },
--         { "To delete from the current line to the beginning of the line, use d^" },
--     }
-- }
custom_tips = {},

-- The language of the fortune content
-- Default: "en"
language = "en",
}
```

**Performance**

- **What changed:** RNG is seeded once at module load, language modules are cached, and formatting was optimized to reduce temporary allocations.

- **New option:** `min_width` (number) — pads each formatted line to at least this width when > 0.

- **Local benchmark:** two helper scripts were added under `scripts/`:

  - `scripts/bench.lua` — simple Lua micro-benchmark (requires `lua`/`luajit`).
  - `scripts/bench_nvim.lua` — runs a headless Neovim benchmark for realistic timings.

Run the Neovim benchmark (recommended):

```bash
nvim --headless -u NONE -c 'luafile scripts/bench_nvim.lua' -c qa
```

Or run the Lua micro-benchmark:

```bash
lua scripts/bench.lua
# or
luajit scripts/bench.lua
```

These commands print iterations, total seconds and average milliseconds per `get_fortune()` call.

## Usage

The plugin returns a lua table

```lua
-- dashboard.nvim reference
footer = function()
  local info = {}
  local fortune = require("fortune").get_fortune()
  info[1] = "  Neovim loaded " .. vim.fn.strftime("%H:%M") .. " on " .. vim.fn.strftime("%d/%m/%Y") .. " '"
  local footer = vim.list_extend(info, fortune)
  return footer
  end

```

## Screenshots

### Tips

When `content_type="tips"`, it shows some useful tips and tricks like neovim shortcuts which can be very useful.

![1](https://i.imgur.com/f8CvAso.png)

### Quote

When `content_type="quotes"`, it shows programming quotes that are both funny and educational.

![2](https://i.imgur.com/Zi0Gr2n.png)

## Self promotion

Checkout my other plugins
[highlighturl](https://github.com/rubiin/highlighturl.nvim)
[vimwordlist](https://github.com/rubiin/vimwordlist.nvim)

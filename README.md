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
   -- amongst your other plugins
  	{ "rubiin/fortune.nvim", config = true },
  -- or
	{
		"rubiin/fortune.nvim",
		version = "*",
		config = function()
			require("fortune").setup({
				max_width = 60, -- max width the fortune section should take place
				display_format = "short" | "long" | "mixed", -- the fortune form
				content_type = "quotes" | "tips",
			})
		end,
	},

}
```

Using [vim-plug](https://github.com/junegunn/vim-plug) in vimscript

```vim
Plug "rubiin/fortune.nvim"
```

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

## Configuration

```lua
max_width = 60, -- max width the fortune section should take place
display_format = "short" | "long" | "mixed"  -- the fortune form
content_type = "quotes" | "tips"
```

## Screenshots

### Tips

When `content_type="tips"`, it shows some useful tips and tricks like neovim shortcuts which can be very useful.

![1](https://i.imgur.com/f8CvAso.png)

### Quote

When `content_type="quotes"`, it shows programming quotes that are both funny and educational.

![2](https://i.imgur.com/Zi0Gr2n.png)

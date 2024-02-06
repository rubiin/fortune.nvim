
<img src="https://i.imgur.com/rSaIQPp.png" height=150 />

A fortune plugin for neovim
Useful for dashboard plugins like mini.starter and dashboard.nvim

## Installation

Using [packer](https://github.com/wbthomason/packer.nvim) in lua

```lua
use {"rubiin/fortune.nvim", tag = '*'}
```

Using [lazy.nvim](https://github.com/folke/lazy.nvim) in lua

```lua
{
   -- amongst your other plugins
  {'rubiin/fortune.nvim', version = "*", config = true}

  -- or
  {'rubiin/fortune.nvim', version = "*",
    config = function()
      require('fortune').setup {
        max_width = 60,
      }
    end
  }
}
```

Using [vim-plug](https://github.com/junegunn/vim-plug) in vimscript

```vim
Plug 'rubiin/fortune.nvim', {'tag' : '*'}
```

## Usage
The plugin returns a lua table
```lua
         -- dashboard.nvim reference
          footer = function()
            local info = {}
            local fortune = require('fortune').get_fortune()
            info[1] = '  Neovim loaded ' .. vim.fn.strftime('%H:%M') .. ' on ' .. vim.fn.strftime('%d/%m/%Y') .. ' '
            local footer = vim.list_extend(info, fortune)
            return footer
          end,

```

## Configuration
```lua
     max_width = 60, -- max width the fortune section should take place
     display_format = 'short' | 'long'  -- the fortune form
     content_type = 'quotes' | 'tips'
```

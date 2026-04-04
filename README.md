<h1 align="center">Synthwave '85</h1>

<p align="center">
  <strong>A Neovim colorscheme inspired by the neon glow of the 80s</strong>
</p>

<p align="center">
  Ported from <a href="https://github.com/robb0wen/synthwave-vscode">Synthwave '84</a> for VS Code
</p>

## Features

- Faithful port of the iconic Synthwave '84 VS Code theme
- Full Treesitter support
- LSP semantic token highlighting
- Extensive plugin support (Telescope, Neo-tree, nvim-cmp, GitSigns, Lazy, and more)
- Configurable transparency
- Fine-grained italic control

## Requirements

- Neovim >= 0.9.0
- `termguicolors` enabled
- A terminal with true color support

## Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "your-username/synthwave-eightyfive",
  lazy = false,
  priority = 1000,
  config = function()
    require("synthwave-eightyfive").setup({
      -- your configuration
    })
    vim.cmd.colorscheme("synthwave-eightyfive")
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "your-username/synthwave-eightyfive",
  config = function()
    require("synthwave-eightyfive").setup({
      -- your configuration
    })
    vim.cmd.colorscheme("synthwave-eightyfive")
  end,
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'your-username/synthwave-eightyfive'

" After plug#end()
lua << EOF
require("synthwave-eightyfive").setup({})
EOF
colorscheme synthwave-eightyfive
```

## Configuration

### Default Options

```lua
require("synthwave-eightyfive").setup({
  transparent = false,      -- Enable transparent background
  terminal_colors = true,   -- Set terminal colors (0-15)
  italics = {
    comments = true,        -- Italic comments
    keywords = false,       -- Italic keywords
    functions = false,      -- Italic function names
    strings = false,        -- Italic strings
    variables = false,      -- Italic variables
    parameters = true,      -- Italic parameters
  },
  overrides = {},           -- Highlight group overrides
})
```

### Transparency

Enable transparent backgrounds for use with terminal transparency or background images:

```lua
require("synthwave-eightyfive").setup({
  transparent = true,
})
```

### Italics

You can control italics globally or for specific syntax categories:

```lua
-- Disable all italics
require("synthwave-eightyfive").setup({
  italics = false,
})

-- Or fine-tune specific categories
require("synthwave-eightyfive").setup({
  italics = {
    comments = true,
    keywords = true,
    functions = false,
    strings = false,
    variables = false,
    parameters = true,
  },
})
```

### Custom Overrides

Override any highlight group with your own settings:

```lua
require("synthwave-eightyfive").setup({
  overrides = {
    -- Make comments bold
    Comment = { bold = true },
    -- Custom cursor line
    CursorLine = { bg = "#2a2139" },
    -- Override a specific plugin group
    TelescopeSelection = { bg = "#34294f", bold = true },
  },
})
```

## Supported Plugins

- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)
- [neo-tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)
- [nvim-tree.lua](https://github.com/nvim-tree/nvim-tree.lua)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [indent-blankline.nvim](https://github.com/lukas-reineke/indent-blankline.nvim)
- [which-key.nvim](https://github.com/folke/which-key.nvim)
- [lazy.nvim](https://github.com/folke/lazy.nvim)
- [mason.nvim](https://github.com/williamboman/mason.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [blink.cmp](https://github.com/Saghen/blink.cmp)
- [nvim-notify](https://github.com/rcarriga/nvim-notify)
- [noice.nvim](https://github.com/folke/noice.nvim)
- [trouble.nvim](https://github.com/folke/trouble.nvim)
- [flash.nvim](https://github.com/folke/flash.nvim)
- [leap.nvim](https://github.com/ggandor/leap.nvim)
- [mini.nvim](https://github.com/echasnovski/mini.nvim)
- [nvim-navic](https://github.com/SmiteshP/nvim-navic)
- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [snacks.nvim](https://github.com/folke/snacks.nvim)
- [dashboard-nvim](https://github.com/nvimdev/dashboard-nvim)
- [alpha-nvim](https://github.com/goolord/alpha-nvim)

## Palette

| Color | Hex | Usage |
|-------|-----|-------|
| Pink | `#ff7edb` | Variables, headings |
| Cyan | `#36f9f6` | Functions |
| Green | `#72f1b8` | Tags, strings (template) |
| Yellow | `#fede5d` | Keywords, operators |
| Orange | `#f97e72` | Constants, numbers |
| Orange Bright | `#ff8b39` | Strings |
| Red | `#fe4450` | Types, errors |
| Purple | `#b893ce` | Git changes |
| Comment | `#848bbd` | Comments |

## Credits

- [Synthwave '84](https://github.com/robb0wen/synthwave-vscode) by Robb Owen - Original VS Code theme
- [monalisa-nvim](https://github.com/mCassy/monalisa-nvim) - Project structure inspiration

## License

MIT

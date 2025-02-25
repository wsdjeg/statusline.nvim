# statusline.nvim

`statusline.nvim` is a simple statusline plugin for neovim.


## Install


## Config

```lua

require('statusline').setup({
  left_sections = { 'winnr', 'filename' },
  right_sections = { 'fileformat', 'cursorpos' },
  enable_mode = true,
  index_type = 3,
  separator = 'arrow',
  iseparator = 'arrow',
}}

```

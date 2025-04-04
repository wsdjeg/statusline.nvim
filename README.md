# statusline.nvim

`statusline.nvim` is a simple statusline plugin for neovim.

<!-- vim-markdown-toc GFM -->

* [Installation](#installation)
* [Setup](#setup)
* [Usage](#usage)
* [Self-Promotion](#self-promotion)

<!-- vim-markdown-toc -->

## Installation

using [nvim-plug](https://github.com/wsdjeg/nvim-plug)

```lua
require('plug').add({
  {
    'wsdjeg/statusline.nvim',
  },
})
```

## Setup

```lua
require('statusline').setup({
  left_sections = { 'winnr', 'filename' },
  right_sections = { 'fileformat', 'cursorpos' },
  enable_mode = true,
  index_type = 3,
  separator = 'arrow',
  iseparator = 'arrow',
})
```

## Usage

1. display git branch on statusline

```lua
require('plug').add({
  {
    'wsdjeg/statusline.nvim',
    events = { 'VimEnter' },
    config = function()
      require('statusline').register_sections('vcs', function()
        return '%{ v:lua.require("git.command.branch").current() }'
      end)
      require('statusline').setup({
        left_sections = { 'winnr', 'filename', 'vcs' },
      })
    end,
  },
})
```

## Self-Promotion

Like this plugin? Star the repository on
GitHub.

Love this plugin? Follow [me](https://wsdjeg.net/) on
[GitHub](https://github.com/wsdjeg) and
[Twitter](http://twitter.com/wsdtty).

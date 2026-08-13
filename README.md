# statusline.nvim

`statusline.nvim` is a simple statusline plugin for neovim.

[![Run Tests](https://github.com/wsdjeg/statusline.nvim/actions/workflows/test.yml/badge.svg)](https://github.com/wsdjeg/statusline.nvim/actions/workflows/test.yml)
[![GitHub License](https://img.shields.io/github/license/wsdjeg/statusline.nvim)](LICENSE)
[![GitHub Issues or Pull Requests](https://img.shields.io/github/issues/wsdjeg/statusline.nvim)](https://github.com/wsdjeg/statusline.nvim/issues)
[![GitHub commit activity](https://img.shields.io/github/commit-activity/m/wsdjeg/statusline.nvim)](https://github.com/wsdjeg/statusline.nvim/commits/master/)
[![GitHub Release](https://img.shields.io/github/v/release/wsdjeg/statusline.nvim)](https://github.com/wsdjeg/statusline.nvim/releases)
[![luarocks](https://img.shields.io/luarocks/v/wsdjeg/statusline.nvim)](https://luarocks.org/modules/wsdjeg/statusline.nvim)

<!-- vim-markdown-toc GFM -->

- [Installation](#installation)
- [Setup](#setup)
- [Usage](#usage)
- [Self-Promotion](#self-promotion)

<!-- vim-markdown-toc -->

## Installation

Using [nvim-plug](https://github.com/wsdjeg/nvim-plug)

```lua
require('plug').add({
  {
    'wsdjeg/statusline.nvim',
  },
})
```

Using [luarocks](https://luarocks.org/)

```
luarocks install statusline.nvim
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


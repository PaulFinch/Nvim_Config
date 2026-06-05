## Options
  - vim.g.mapleader = " "
  - vim.g.maplocalleader = " "
  - vim.o.tabstop = 4
  - vim.o.shiftwidth = 4
  - vim.o.softtabstop = 4
  - vim.o.expandtab = true
  - vim.o.smarttab = true
  - vim.o.smartindent = true
  - vim.o.autoindent = true
  - vim.o.breakindent = true
  - vim.o.number = true
  - vim.o.relativenumber = false
  - vim.o.signcolumn = "yes"
  - vim.o.mouse = "a"
  - vim.o.showmode = false
  - vim.o.termguicolors = true
  - vim.o.undofile = true
  - vim.o.clipboard = "unnamedplus"
  - vim.g.netrw_banner = 0
  - vim.g.have_nerd_font = true
  - vim.o.inccommand = "split"
  - vim.o.splitbelow = true
  - vim.o.splitright = true
  - vim.o.ignorecase = true
  - vim.o.smartcase = true
  - vim.o.laststatus = 3
  - vim.o.swapfile = false
  - vim.o.backup = false
  - vim.o.scrolloff = 10
  - vim.o.cursorline = true
  - vim.o.smoothscroll = true

## Plugins (vim.pack)
  - telescope
  - treesitter
  - aerial
  - blink-cmp
  - which-key
  - neo-tree
  - mini-statusline
  - gitsigns
  - noice / notify
  - mason
  - mason-tool-installer
  - nvim-lspconfig
  - todo-comments
  - conform
  - nvim-autopairs
  - nvim-surround

  - plenary
  - nvim-web-devicons
  - nui

## Theme
  - monokai-pro (machine)

## Managed Languages by treesitter
  - bash
  - c
  - cpp
  - go
  - json
  - lua
  - markdown
  - markdown_inline
  - python
  - query
  - regex
  - rust
  - vim
  - vimdoc
  - yaml

## Enabled LSP by vim.lsp
  - lua_ls
  - bashls
  - clangd
  - gopls
  - jsonls
  - marksman
  - pyright
  - rust_analyzer
  - yamlls

## Managed Binaries by mason-tool-installer
  - lua-language-server
  - bash-language-server
  - clangd
  - gopls
  - json-lsp
  - marksman
  - pyright
  - rust-analyzer
  - yaml-language-server
  - shfmt
  - clang-format
  - black
  - stylua
  - prettier

## Formatters by conform
  - bash : shfmt
  - c / cpp : clang_format
  - markdown / json / yaml : prettier
  - python : black
  - rust : rustfmt
  - go : gofmt
  - lua : stylua

## Keymaps
  - space : leader key
  - leader + tf : toggle neo-tree
  - leader + ta : toggle aerial
  - leader + th : toggle highlight
  - leader + tt : toggle treesitter
  - leader + sc : search command
  - leader + sk : search keymap
  - leader + sf : search files
  - leader + sg : search grep 
  - leader + st : search todo
  - leader + sa : search aerial
  - leader + pb : package build
  - leader + pu : package update
  - leader + ff : format file

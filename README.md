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

## Plugins (vim.pack)
  - telescope
  - treesitter
  - blink-cmp
  - which-key
  - neo-tree
  - mini-statusline
  - gitsigns
  - noice
  - notify
  - mason
  - todo-comments

  - plenary
  - nvim-web-devicons
  - nui

## Theme
  - monokai-pro (machine)

## Managed Languages by treesitter
  - bash
  - c
  - cpp
  - markdown
  - python
  - rust
  - go
  - json
  - yaml
  - regex

## Managed LSP by mason
  - lua_ls
  - bashls
  - clangd
  - gopls
  - jsonls
  - marksman
  - pyright
  - rust_analyzer
  - yamlls

## Keymaps
  - space : leader key
  - leader + tf : Toggle neo-tree
  - leader + sc : search command
  - leader + sf : search keymap
  - leader + sf : search files
  - leader + sg : search grep 
  - leader + st : search todo 
  - leader + pu : package update

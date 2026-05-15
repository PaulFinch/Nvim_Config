nvim 0.12

- Options:
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
  - vim.o.signcolumn = true
  - vim.o.mouse = "a"
  - vim.o.showmode = false
  - vim.o.termguicolors = true
  - vim.o.undofile = true
  - vim.o.clipboard = "unnamedplus"

- Plugins (Managed by vim.pack):
  - blink cmp (preset: super-tab and ghost_text)
  - telescope
  - neo-tree (open and close with '-' key)
  - treesitter
  - which-key
  - noice
  - mini-statusline
  - gitsigns

- Theme: monokai (machine)

- Managed Languages by treesitter:
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

- LSP (Managed by Mason):
  - bashls
  - clangd
  - gopls
  - jsonls
  - marksman
  - pyright
  - rust_analyzer
  - yamlls

- Keymaps:
  - space: leader key
  - '-' : open and close neo-tree
  - leader + sf : search files
  - leader + sg : search grep
  - leader + pu : package upgrade (vim.pack)

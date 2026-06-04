vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.loader.enable()

vim.schedule(function()
  vim.o.clipboard = "unnamedplus"
end)

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.autoindent = true
vim.o.breakindent = true
vim.o.number = true
vim.o.relativenumber = false
vim.o.signcolumn = "yes"
vim.o.mouse = "a"
vim.o.showmode = false
vim.o.termguicolors = true
vim.o.undofile = true

vim.g.netrw_banner = 0
vim.g.have_nerd_font = true

vim.o.inccommand = "split"
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.laststatus = 3
vim.o.swapfile = false
vim.o.backup = false
vim.o.scrolloff = 10
vim.o.cursorline = true
--vim.o.cmdheight = 0
vim.o.smoothscroll = true

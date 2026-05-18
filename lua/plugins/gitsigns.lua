vim.pack.add({
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
},{
  confirm = false,
})

local gitsigns = require("gitsigns")

gitsigns.setup({})

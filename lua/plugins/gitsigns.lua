vim.pack.add({
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
},{
  confirm = false,
  load = true,
})

local gitsigns = require("gitsigns")

gitsigns.setup({})

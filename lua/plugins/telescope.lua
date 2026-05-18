vim.pack.add({
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
},{
  confirm = false,
})

local telescope = require("telescope")

telescope.setup({})

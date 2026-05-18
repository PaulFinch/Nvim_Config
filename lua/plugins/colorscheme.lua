vim.pack.add({
  { src = "https://github.com/loctvl842/monokai-pro.nvim" },
},{
  confirm = false,
})

local monokai = require("monokai-pro")

monokai.setup({
  filter = "machine",
})

vim.schedule(function()
  vim.cmd.colorscheme("monokai-pro")
end)

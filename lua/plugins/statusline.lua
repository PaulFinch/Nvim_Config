vim.pack.add({
  { src = "https://github.com/echasnovski/mini.nvim" },
},{
  confirm = false,
})

local statusline = require("mini.statusline")

statusline.setup({
  use_icons = true;
})

statusline.section_location = function() return '%2l:%-2v' end

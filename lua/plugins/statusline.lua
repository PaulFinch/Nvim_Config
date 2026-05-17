vim.pack.add({
  { src = "https://github.com/echasnovski/mini.nvim" },
},{
  confirm = false,
  load = true,
})

local statusline = require("mini.statusline")

statusline.setup({
  use_icons = true;
})

statusline.section_location = function() return '%2l:%-2v' end

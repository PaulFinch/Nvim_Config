vim.pack.add({
    { src = "https://github.com/nvim-mini/mini.nvim" },
    { src = "https://github.com/loctvl842/monokai-pro.nvim" },
}, {
    confirm = false,
})

require("monokai-pro").setup()
vim.cmd.colorscheme("monokai-pro-machine")

require('mini.basics').setup()
require('mini.icons').setup()
require('mini.notify').setup()
require('mini.surround').setup()
require('mini.pairs').setup()
require('mini.ai').setup()
require('mini.trailspace').setup()
require('mini.pick').setup()
require('mini.extra').setup()
require('mini.fuzzy').setup()
require('mini.diff').setup()
require('mini.git').setup()

local statusline = require("mini.statusline")
statusline.setup()
statusline.section_location = function()
    return "%2l:%-2v"
end
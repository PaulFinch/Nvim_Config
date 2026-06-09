vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/nvim-mini/mini.nvim" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/loctvl842/monokai-pro.nvim" },
}, {
    confirm = false,
})

require("monokai-pro").setup()
vim.cmd.colorscheme("monokai-pro-machine")

require("gitsigns").setup({})

require('mini.basics').setup()
require('mini.icons').setup()
require('mini.notify').setup()
require('mini.cmdline').setup()
require('mini.tabline').setup()
require('mini.surround').setup()
require('mini.pairs').setup()
require('mini.ai').setup()
require('mini.trailspace').setup()
require('mini.comment').setup()
require('mini.pick').setup()
require('mini.git').setup()
require('mini.diff').setup()

local statusline = require("mini.statusline")
statusline.setup({
    use_icons = true,
})

statusline.section_location = function()
    return "%2l:%-2v"
end
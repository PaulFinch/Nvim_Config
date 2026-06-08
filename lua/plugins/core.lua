vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/kylechui/nvim-surround" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
    { src = "https://github.com/loctvl842/monokai-pro.nvim" },
}, {
    confirm = false,
})

require("nvim-autopairs").setup({})
require("nvim-surround").setup({})
require("gitsigns").setup({})
require("monokai-pro").setup()

vim.schedule(function()
    vim.cmd.colorscheme("monokai-pro-machine")
end)
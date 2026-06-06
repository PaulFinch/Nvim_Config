vim.pack.add({
    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/nvim-tree/nvim-web-devicons" },
    { src = "https://github.com/MunifTanjim/nui.nvim" },
    { src = "https://github.com/windwp/nvim-autopairs" },
    { src = "https://github.com/kylechui/nvim-surround" },
    { src = "https://github.com/lewis6991/gitsigns.nvim" },
}, {
    confirm = false,
})

require("nvim-autopairs").setup({})
require("nvim-surround").setup({})
require("gitsigns").setup({})
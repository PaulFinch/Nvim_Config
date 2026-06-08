vim.pack.add({
    { src = "https://github.com/stevearc/oil.nvim" },
}, {
    confirm = false,
})

require("oil").setup({
    default_file_explorer = true,
})
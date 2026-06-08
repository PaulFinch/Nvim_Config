vim.pack.add({
    { src = "https://github.com/stevearc/aerial.nvim" },
}, {
    confirm = false,
})

require("aerial").setup({
    backends = { "lsp", "treesitter", "markdown", "man" },
    layout = {
        default_direction = "prefer_right",
        width = 32,
        min_width = 24,
    },
    attach_mode = "window",
    show_guides = true,
    filter_kind = false,
})
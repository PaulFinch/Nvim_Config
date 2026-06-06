vim.pack.add({
    { src = "https://github.com/stevearc/conform.nvim" },
}, {
    confirm = false,
})

require("conform").setup({
    formatters_by_ft = {
        bash = { "shfmt" },
        c = { "clang_format" },
        cpp = { "clang_format" },
        markdown = { "prettier" },
        python = { "black" },
        rust = { "rustfmt" },
        go = { "gofmt" },
        json = { "prettier" },
        yaml = { "prettier" },
        lua = { "stylua" },
    },
})

vim.api.nvim_create_user_command("FormatFile", function()
    require("conform").format({
        async = true,
        lsp_format = "fallback",
    })
end, {
    desc = "Format File",
})

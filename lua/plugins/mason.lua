vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
    { src = "https://github.com/neovim/nvim-lspconfig" },
    { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
}, {
    confirm = false,
})

require("mason").setup({})
require("mason-lspconfig").setup({})

require("mason-tool-installer").setup({
    ensure_installed = {
        "lua-language-server",
        "bash-language-server",
        "clangd",
        "gopls",
        "json-lsp",
        "marksman",
        "pyright",
        "rust-analyzer",
        "yaml-language-server",
        "shfmt",
        "clang-format",
        "black",
        "stylua",
        "prettier",
    },
})

vim.lsp.enable({
    "lua_ls",
    "bashls",
    "clangd",
    "gopls",
    "jsonls",
    "marksman",
    "pyright",
    "rust_analyzer",
    "yamlls",
})

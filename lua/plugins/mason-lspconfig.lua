local servers = {
    "bashls",
    "clangd",
    "gopls",
    "jsonls",
    "marksman",
    "pyright",
    "rust_analyzer",
    "yamlls",
}

require("mason-lspconfig").setup({
    ensure_installed = servers,
})

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
local capabilities = require("blink.cmp").get_lsp_capabilities()

-- nvim-lspconfig provides the server definitions used by vim.lsp.enable().
vim.lsp.config("*", {
    capabilities = capabilities,
})

vim.lsp.enable(servers)

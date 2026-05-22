vim.pack.add({
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
},{
  confirm = false,
})

local mason = require("mason")

mason.setup({})

local mason_lspconfig = require("mason-lspconfig")

local capabilities
if type(require("blink.cmp").get_lsp_capabilities) == "function" then
    capabilities = require("blink.cmp").get_lsp_capabilities()
else
    capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = require("blink.cmp").update_capabilities(capabilities)
end

local servers = {
    "lua_ls",
    "bashls",
    "clangd",
    "gopls",
    "jsonls",
    "marksman",
    "pyright",
    "rust_analyzer",
    "yamlls",
}

mason_lspconfig.setup({
    ensure_installed = servers,
    automatic_enable = true,
})

for _, server_name in ipairs(servers) do
    vim.lsp.config(server_name, {
        capabilities = capabilities,
    })
end

local mason_tool_installer = require("mason-tool-installer")

mason_tool_installer.setup({
    ensure_installed = {
        "shfmt",
        "clang-format",
        "black",
        "stylua",
        "prettier",
    },
})

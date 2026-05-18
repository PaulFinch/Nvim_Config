vim.pack.add({
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
},{
  confirm = false,
})

local mason = require("mason")

mason.setup({})

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

local mason_lspconfig = require("mason-lspconfig")

mason_lspconfig.setup({
  ensure_installed = servers,
})

local lspconfig = require("lspconfig")

vim.lsp.enable(servers)

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

mason_lspconfig.setup({
    ensure_installed = {
        "lua_ls",
        "bashls",
        "clangd",
        "gopls",
        "jsonls",
        "marksman",
        "pyright",
        "rust_analyzer",
        "yamlls",
    },
    automatic_enable = true,
})

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

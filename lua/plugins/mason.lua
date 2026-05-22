vim.pack.add({
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
  { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
},{
  confirm = false,
})

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

require("mason").setup({})

require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_enable = true,
})

require("mason-tool-installer").setup({
    ensure_installed = {
        "shfmt",
        "clang-format",
        "black",
        "stylua",
        "prettier",
    },
})

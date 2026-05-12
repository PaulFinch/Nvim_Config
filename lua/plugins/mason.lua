local M = {}

M.specs = {
  { src = "https://github.com/mason-org/mason.nvim" },
  { src = "https://github.com/mason-org/mason-lspconfig.nvim" },
  { src = "https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim" },
}

function M.setup()
  local lsp = require("plugins.lsp")
  local conform = require("plugins.conform")

  require("mason").setup({})

  require("mason-lspconfig").setup({
    ensure_installed = lsp.servers,
    automatic_enable = false,
  })

  local tools = vim.list_extend(vim.deepcopy(lsp.servers), conform.mason_tools)

  require("mason-tool-installer").setup({
    ensure_installed = tools,
  })
end

return M

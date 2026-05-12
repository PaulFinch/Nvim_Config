local M = {}

M.specs = {
  { src = "https://github.com/neovim/nvim-lspconfig" },
}

M.servers = {
  "bashls",
  "clangd",
  "gopls",
  "jsonls",
  "marksman",
  "pyright",
  "rust_analyzer",
  "yamlls",
}

function M.setup()
  vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(event)
      local opts = { buffer = event.buf, silent = true }

      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
      vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
      vim.keymap.set("n", "<leader>ws", vim.lsp.buf.workspace_symbol, opts)
      vim.keymap.set("n", "<leader>ss", vim.lsp.buf.document_symbol, opts)
    end,
  })

  for _, server in ipairs(M.servers) do
    vim.lsp.enable(server)
  end
end

return M

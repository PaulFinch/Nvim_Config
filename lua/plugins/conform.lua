local M = {}

M.specs = {
  { src = "https://github.com/stevearc/conform.nvim" },
}

M.mason_tools = {
  "shfmt",
  "clang-format",
  "jq",
  "stylua",
  "prettier",
  "ruff",
  "yamlfmt",
}

function M.setup()
  require("conform").setup({
    formatters_by_ft = {
      bash = { "shfmt" },
      c = { "clang_format" },
      cpp = { "clang_format" },
      json = { "jq" },
      lua = { "stylua" },
      markdown = { "prettier" },
      python = { "ruff_format" },
      yaml = { "yamlfmt" },
    },
    format_on_save = function(bufnr)
      if vim.g.disable_autoformat or vim.b[bufnr].disable_autoformat then
        return
      end

      return {
        timeout_ms = 500,
        lsp_format = "fallback",
      }
    end,
    notify_on_error = true,
    notify_no_formatters = true,
  })
end

return M

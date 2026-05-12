local M = {}

M.specs = {
  { src = "https://github.com/folke/noice.nvim" },
  { src = "https://github.com/rcarriga/nvim-notify" },
}

function M.setup()
  local notify = require("notify")

  notify.setup({})
  vim.notify = notify

  require("noice").setup({
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true,
      lsp_doc_border = true,
    },
  })
end

return M

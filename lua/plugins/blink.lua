local M = {}

M.specs = {
  {
    src = "https://github.com/Saghen/blink.cmp",
    version = vim.version.range("1"),
  },
}

function M.setup()
  require("blink.cmp").setup({
    keymap = {
      preset = "super-tab",
    },
    completion = {
      ghost_text = {
        enabled = true,
      },
    },
  })
end

return M

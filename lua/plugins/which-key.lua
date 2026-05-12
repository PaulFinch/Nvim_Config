local M = {}

M.specs = {
  { src = "https://github.com/folke/which-key.nvim" },
}

function M.setup()
  require("which-key").setup({})
end

return M

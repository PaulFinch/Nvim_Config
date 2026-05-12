local M = {}

M.specs = {
  { src = "https://github.com/echasnovski/mini.pairs" },
}

function M.setup()
  require("mini.pairs").setup({})
end

return M

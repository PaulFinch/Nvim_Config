local M = {}

M.specs = {
  { src = "https://github.com/echasnovski/mini.surround" },
}

function M.setup()
  require("mini.surround").setup({})
end

return M

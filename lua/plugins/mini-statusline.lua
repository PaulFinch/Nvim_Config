local M = {}

M.specs = {
  { src = "https://github.com/echasnovski/mini.statusline" },
}

function M.setup()
  require("mini.statusline").setup({
    use_icons = true,
  })
end

return M

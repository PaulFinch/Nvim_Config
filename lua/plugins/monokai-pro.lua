local M = {}

M.specs = {
  { src = "https://github.com/loctvl842/monokai-pro.nvim" },
}

function M.setup()
  require("monokai-pro").setup({
    filter = "machine",
  })

  vim.cmd.colorscheme("monokai-pro")
end

return M

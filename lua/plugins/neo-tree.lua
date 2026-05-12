local M = {}

M.specs = {
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim", version = "v3.x" },
}

function M.setup()
  require("neo-tree").setup({
    filesystem = {
      hijack_netrw_behavior = "open_current",
      follow_current_file = {
        enabled = true,
      },
    },
    window = {
      mappings = {
        ["-"] = "close_window",
      },
    },
  })

  vim.keymap.set("n", "-", "<cmd>Neotree toggle filesystem reveal left<cr>", {
    desc = "Toggle Neo-tree",
    silent = true,
  })
end

return M

local M = {}

M.specs = {
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/nvim-telescope/telescope-fzf-native.nvim" },
}

function M.setup()
  local telescope = require("telescope")

  telescope.setup({
    extensions = {
      fzf = {
        fuzzy = true,
        override_generic_sorter = true,
        override_file_sorter = true,
        case_mode = "smart_case",
      },
    },
  })

  pcall(telescope.load_extension, "fzf")

  vim.keymap.set("n", "<leader>sc", "<cmd>Telescope commands<cr>", {
    desc = "Search commands",
    silent = true,
  })

  vim.keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<cr>", {
    desc = "Search files",
    silent = true,
  })

  vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", {
    desc = "Search by grep",
    silent = true,
  })
end

return M

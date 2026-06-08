vim.pack.add({
    { src = "https://github.com/nvim-telescope/telescope.nvim" },
    { src = "https://github.com/nvim-telescope/telescope-project.nvim" },
}, {
    confirm = false,
})

local telescope = require("telescope")
local project_actions = require("telescope._extensions.project.actions")

telescope.setup({
  extensions = {
    project = {
      base_dirs = {
        { path = "~/Tools/Github", max_depth = 2 },
      },
      ignore_missing_dirs = true,
      hidden_files = false,
      theme = "dropdown",
      order_by = "asc",
      search_by = "title",
      sync_with_nvim_tree = true,
      on_project_selected = function(prompt_bufnr)
        project_actions.change_working_directory(prompt_bufnr, false)
      end,
    },
  },
})

telescope.load_extension("project")
telescope.load_extension("aerial")
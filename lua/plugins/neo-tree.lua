vim.pack.add({
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
},{
    confirm = false,
})

local neo_tree = require("neo-tree")

neo_tree.setup({
    close_if_last_window = true,
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = false,
        },
        follow_current_file = {
            enabled = true,
        },
        hijack_netrw_behavior = "open_default",
    },
    window = {
        width = 32,
    },
})

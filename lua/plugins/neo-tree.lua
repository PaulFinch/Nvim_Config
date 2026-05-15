require("neo-tree").setup({
    close_if_last_window = true,
    filesystem = {
        follow_current_file = {
            enabled = true,
        },
        hijack_netrw_behavior = "open_default",
    },
    window = {
        width = 32,
    },
})

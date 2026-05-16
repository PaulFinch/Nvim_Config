local ok, neo_tree = pcall(require, "neo-tree")
if not ok then
  return
end

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

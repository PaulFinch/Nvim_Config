vim.pack.add({
    { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
}, {
    confirm = false,
})

require("neo-tree").setup({
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

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    if vim.fn.argc() == 0 then
      vim.schedule(function()
        vim.cmd("Neotree filesystem reveal left")
      end)
    end
  end,
})

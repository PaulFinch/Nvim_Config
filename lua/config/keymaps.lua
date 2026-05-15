vim.keymap.set("n", "-", function()
    require("neo-tree.command").execute({
        source = "filesystem",
        toggle = true,
        reveal = true,
    })
end, { desc = "Toggle file tree" })

vim.keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "Search files" })
vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "Search text" })
vim.keymap.set("n", "<leader>pu", "<cmd>PackUpdate<cr>", { desc = "Update plugins" })

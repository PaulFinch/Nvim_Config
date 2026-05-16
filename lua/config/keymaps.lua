local map = vim.keymap.set

map("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "Search files" })
map("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "Search grep" })

map("n", "<leader>pu", function()
  vim.pack.update()
end, { desc = "Package upgrade" })

map("n", "-", function()
    require("neo-tree.command").execute({
        source = "filesystem",
        toggle = true,
        reveal = true,
    })
end, { desc = "Toggle file tree" })

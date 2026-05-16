vim.keymap.set("n", "<leader>sc", "<cmd>Telescope commands<cr>", { desc = "[S]earch [C]ommands" })
vim.keymap.set("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "[S]earch [G]rep" })

vim.keymap.set("n", "<leader>pu", function()
  vim.pack.update()
end, { desc = "[P]ackage [U]pdate" })

vim.keymap.set("n", "<leader>tf", function()
    require("neo-tree.command").execute({
        source = "filesystem",
        toggle = true,
        reveal = true,
    })
end, { desc = "[T]oggle [F]ile Explorer" })

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function() vim.hl.on_yank() end,
})


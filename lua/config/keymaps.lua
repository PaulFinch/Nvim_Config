vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "File Explorer" })

-- Search
vim.keymap.set("n", "<leader>sc", "<cmd>Telescope commands<cr>", { desc = "[S]earch [C]ommands" })
vim.keymap.set("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "[S]earch [G]rep" })
vim.keymap.set("n", "<leader>sp", "<cmd>Telescope project<cr>", { desc = "[S]earch [P]roject" })
vim.keymap.set("n", "<leader>sa", "<cmd>Telescope aerial<cr>", { desc = "[S]earch [A]erial" })

-- Toggle
vim.keymap.set("n", "<leader>ta", "<cmd>AerialToggle<cr>", { desc = "[T]oggle [A]erial" })
vim.keymap.set("n", "<leader>tf", "<cmd>FormatFile<cr>", { desc = "[T]oggle [F]ormat" })
vim.keymap.set("n", "<leader>tu", function()
	vim.cmd.BuildBlink()
	vim.cmd.MasonToolsUpdate()
	vim.pack.update()
end, { desc = "[T]oggle [U]pdate" })
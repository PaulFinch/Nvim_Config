-- Search
vim.keymap.set("n", "<leader>sc", "<cmd>Telescope commands<cr>", { desc = "[S]earch [C]ommands" })
vim.keymap.set("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "[S]earch [G]rep" })
vim.keymap.set("n", "<leader>sp", "<cmd>Telescope project<cr>", { desc = "[S]earch [P]roject" })
vim.keymap.set("n", "<leader>sa", "<cmd>Telescope aerial<cr>", { desc = "[S]earch [A]erial" })

-- Toggle
vim.keymap.set("n", "<leader>ta", "<cmd>AerialToggle<cr>", { desc = "[T]oggle [A]erial" })
vim.keymap.set("n", "<leader>tx", "<CMD>Oil<CR>", { desc = "[T]oggle File E[X]plorer" })

-- Format
vim.keymap.set("n", "<leader>ff", "<cmd>FormatFile<cr>", { desc = "[F]ormat [F]ile" })

-- Package
vim.keymap.set("n", "<leader>pu", function()
	vim.cmd.BuildBlink()
	vim.cmd.MasonToolsUpdate()
	vim.pack.update()
end, { desc = "[P]ackage [U]pdate" })

-- Autocmd
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})

vim.api.nvim_create_autocmd("FileType", {
    callback = function(args)
        pcall(vim.treesitter.start, args.buf)
    end,
})

-- File Explorer
vim.keymap.set("n", "-", "<CMD>Ex<CR>", { desc = "File Explorer" })

-- Search
vim.keymap.set("n", "<leader>sc", function() MiniExtra.pickers.commands() end, { desc = "[S]earch [C]ommands" })
vim.keymap.set("n", "<leader>sk", function() MiniExtra.pickers.keymaps() end, { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", function() MiniPick.builtin.files() end, { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sg", function() MiniPick.builtin.grep_live() end, { desc = "[S]earch [G]rep" })
vim.keymap.set("n", "<leader>sp", function()
	local base = vim.fn.expand("~/Tools/Github")
	MiniPick.start({
		source = {
			name = "Projects",
			items = vim.fn.systemlist("cd " .. base .. " 2>/dev/null && find . -mindepth 1 -maxdepth 1 -type d 2>/dev/null | cut -c 3-"),
			choose = function(item) vim.fn.chdir(base .. "/" .. item); vim.notify("cd " .. item) end,
		}
	})
end, { desc = "[S]earch [P]roject" })

-- Toggle
vim.keymap.set("n", "<leader>tf", "<cmd>FormatFile<cr>", { desc = "[T]oggle [F]ormat" })
vim.keymap.set("n", "<leader>tu", function()
	vim.cmd.BuildBlink()
	vim.cmd.MasonToolsUpdate()
	vim.pack.update()
end, { desc = "[T]oggle [U]pdate" })
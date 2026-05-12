vim.keymap.set("n", "<leader>pu", "<cmd>PluginsUpdate<cr>", {
	desc = "Update plugins",
	silent = true,
})

vim.keymap.set("n", "<leader>pm", "<cmd>Mason<cr>", {
	desc = "Open Mason",
	silent = true,
})

require("which-key").add({
	{ "<leader>p", group = "plugins" },
	{ "<leader>s", group = "search" },
	{ "<leader>g", group = "git" },
})

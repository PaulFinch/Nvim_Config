vim.api.nvim_create_user_command("PluginsUpdate", function()
	vim.pack.update()
end, {
	desc = "Update vim.pack plugins",
})

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



vim.api.nvim_create_autocmd("FileChangedShellPost", {
	callback = function()
		vim.notify("File reloaded from disk")
	end,
})

vim.api.nvim_create_autocmd("FileType", {
	pattern = { "help", "man" },
	callback = function()
    	vim.cmd("wincmd L")
	end,
})
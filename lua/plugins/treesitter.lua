vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
}, {
	confirm = false,
})

local parsers = {
	"bash",
	"c",
	"cpp",
	"go",
	"json",
	"lua",
	"markdown",
	"markdown_inline",
	"python",
	"query",
	"regex",
	"rust",
	"vim",
	"vimdoc",
	"yaml",
}

require("nvim-treesitter").setup({
	ensure_installed = parsers,
	auto_install = true,
	highlight = { enable = true },
})
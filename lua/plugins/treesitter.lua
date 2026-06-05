vim.pack.add({
	{ src = "https://github.com/nvim-treesitter/nvim-treesitter" },
}, {
	confirm = false,
})

local treesitter = require("nvim-treesitter")

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

local installed = {}
for _, parser in ipairs(treesitter.get_installed("parsers")) do
	installed[parser] = true
end

local missing = vim.tbl_filter(function(parser)
	return not installed[parser]
end, parsers)

if #missing > 0 then
	treesitter.install(missing)
end

treesitter.setup({})

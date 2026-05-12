local M = {}

M.specs = {
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
}

function M.setup()
  require("nvim-treesitter").setup({})

  require("nvim-treesitter").install({
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
  })
end

return M

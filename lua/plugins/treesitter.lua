local treesitter = require("nvim-treesitter")

treesitter.setup({
  ensure_installed = {
    "bash",
    "c",
    "cpp",
    "markdown",
    "python",
    "rust",
    "go",
    "json",
    "yaml",
    "regex",
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})

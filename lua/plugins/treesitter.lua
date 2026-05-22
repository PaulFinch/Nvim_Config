vim.pack.add({
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
},{
  confirm = false,
})

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
    "lua",
  },
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
})

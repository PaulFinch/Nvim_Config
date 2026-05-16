local ok, treesitter = pcall(require, "nvim-treesitter.configs")
if not ok then
  return
end

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

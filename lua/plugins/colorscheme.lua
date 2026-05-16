local ok, monokai = pcall(require, "monokai-pro")
if not ok then
  return
end

monokai.setup({
  filter = "machine",
})

pcall(vim.cmd.colorscheme, "monokai-pro")

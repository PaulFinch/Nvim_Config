local ok, which_key = pcall(require, "which-key")
if not ok then
  return
end

which_key.setup({
  preset = "modern",
})

which_key.add({
    { "<leader>p", group = "Packages" },
    { "<leader>s", group = "Search" },
})

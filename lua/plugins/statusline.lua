local ok, statusline = pcall(require, "mini.statusline")
if not ok then
  return
end

statusline.setup({})

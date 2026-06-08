vim.pack.add({
    { src = "https://github.com/loctvl842/monokai-pro.nvim" },
}, {
    confirm = false,
})

require("monokai-pro").setup()

vim.schedule(function()
    vim.cmd.colorscheme("monokai-pro-machine")
end)

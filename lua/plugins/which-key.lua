vim.pack.add({
    { src = "https://github.com/folke/which-key.nvim" },
}, {
    confirm = false,
})

local which_key = require("which-key")

which_key.setup({
    preset = "modern",
})

which_key.add({
    { "<leader>s", group = "Search" },
    { "<leader>t", group = "Toggle" },
})
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
    { "<leader>p", group = "Packages" },
    { "<leader>s", group = "Search" },
    { "<leader>t", group = "Toggle" },
    { "<leader>f", group = "Format" },
    { "<leader>n", group = "No" },
})

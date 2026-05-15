local which_key = require("which-key")

which_key.setup()
which_key.add({
    { "<leader>p", group = "Packages", icon = "󰏖 " },
    { "<leader>s", group = "Search" },
})

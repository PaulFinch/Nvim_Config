local which_key = require("which-key")

which_key.setup({
  preset = "modern",
})

which_key.add({
    { "<leader>p", group = "Packages" },
    { "<leader>s", group = "Search" },
})

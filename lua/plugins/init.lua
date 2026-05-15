require("config.notify")

vim.pack.add(require("plugins.spec"), {
    confirm = false,
    load = true,
})

vim.api.nvim_create_user_command("PackUpdate", function()
    vim.pack.update()
end, { desc = "Update plugins managed by vim.pack" })

require("plugins.monokai-pro")
require("plugins.nvim-notify")
require("plugins.noice")
require("plugins.blink")
require("plugins.gitsigns")
require("plugins.mini-statusline")
require("plugins.which-key")
require("plugins.neo-tree")
require("plugins.mason")
require("plugins.mason-lspconfig")
require("plugins.nvim-lspconfig")
require("plugins.telescope")
require("plugins.treesitter")

vim.pack.add({
    { src = "https://github.com/folke/noice.nvim" },
    { src = "https://github.com/rcarriga/nvim-notify" },
}, {
    confirm = false,
})

require("noice").setup({
    presets = {
        command_palette = true,
        lsp_doc_border = true,
    },
})

vim.notify = require("notify")
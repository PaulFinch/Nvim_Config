local noice = require("noice")

noice.setup({
    presets = {
        command_palette = true,
        lsp_doc_border = true,
    },
})

vim.notify = require("notify")

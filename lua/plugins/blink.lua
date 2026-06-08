vim.pack.add({
    { src = "https://github.com/Saghen/blink.lib" },
    { src = "https://github.com/Saghen/blink.cmp" },
}, {
    confirm = false,
})

local blink = require("blink.cmp")

blink.setup({
    keymap = {
        preset = "super-tab",
    },
    appearance = {
        use_nvim_cmp_as_default = false,
    },
    fuzzy = {
        implementation = "prefer_rust",
    },
    completion = {
        ghost_text = {
            enabled = true,
        },
        documentation = {
            auto_show = true,
            auto_show_delay_ms = 500,
        },
    },
    sources = {
        default = { "lsp", "path", "buffer" },
    },
    cmdline = {
        sources = {
            default = { "buffer" },
        },
    },
})

vim.api.nvim_create_user_command("BuildBlink", function()
    blink.build({ force = true }):wait(120000)
end, {})
local blink = require("blink.cmp")

blink.setup({
    keymap = {
        preset = "super-tab",
    },
    appearance = {
        use_nvim_cmp_as_default = false,
    },
    fuzzy = { 
        implementation = "lua",
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
})

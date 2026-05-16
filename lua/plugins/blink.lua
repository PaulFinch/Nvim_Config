local blink = require("blink.cmp")
local native = require("blink.lib.native")

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
        },
    },
    sources = {
        default = { "path", "buffer" },
    },
})

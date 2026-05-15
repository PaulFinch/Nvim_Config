local blink = require("blink.cmp")
local native = require("blink.lib.native")

local function build_native()
    local plugin = vim.pack.get({ "blink.cmp" })[1]

    if not plugin or not plugin.path then
        return
    end

    local platform = native.platform()
    local result = vim.system({ "cargo", "build", "--release" }, {
        cwd = plugin.path,
        text = true,
    }):wait(300000)

    if result.code ~= 0 then
        error(result.stderr or "blink.cmp native build failed")
    end

    local candidates = {
        plugin.path .. "/target/release/libblink_cmp_fuzzy" .. platform.lib_extension,
        plugin.path .. "/target/release/deps/libblink_cmp_fuzzy" .. platform.lib_extension,
    }

    local source
    for _, candidate in ipairs(candidates) do
        if vim.uv.fs_stat(candidate) then
            source = candidate
            break
        end
    end

    if not source then
        error("blink.cmp native library was built, but no output library was found")
    end

    native.mv(source, native.library_path("blink_cmp_fuzzy", native.try_git_commit(plugin.path)))
end

local function ensure_native()
    if not blink.library_available() then
        build_native()
    end
end

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
        default = { "lsp", "path", "buffer" },
    },
})

vim.api.nvim_create_autocmd("PackChanged", {
    callback = function(event)
        if event.data.kind ~= "install" and event.data.kind ~= "update" then
            return
        end

        if event.data.spec.name == "blink.cmp" then
            vim.schedule(function()
                pcall(ensure_native)
            end)
        end
    end,
})

vim.schedule(function()
    pcall(ensure_native)
end)

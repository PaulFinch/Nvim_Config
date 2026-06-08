---@type vim.lsp.Config
return {
    settings = {
        Lua = {
            runtime = {
                version = "LuaJIT",
            },
            workspace = {
                library = {
                    [vim.env.VIMRUNTIME] = true,
                    [vim.fn.stdpath("config")] = true,
                },
                ignoreDir = {
                    ".git",
                    ".venv",
                },
                checkThirdParty = false,
            },
            telemetry = {
                enable = false,
            },
        }
    }
}
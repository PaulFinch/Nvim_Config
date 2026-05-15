local languages = {
    "bash",
    "c",
    "cpp",
    "go",
    "json",
    "markdown",
    "python",
    "regex",
    "rust",
    "yaml",
}
local treesitter = require("nvim-treesitter")

local function ensure_parsers()
    local installed = {}

    for _, language in ipairs(treesitter.get_installed()) do
        installed[language] = true
    end

    local missing = {}
    for _, language in ipairs(languages) do
        if not installed[language] then
            table.insert(missing, language)
        end
    end

    if #missing > 0 then
        treesitter.install(missing, { summary = true })
    end
end

treesitter.setup()

vim.api.nvim_create_autocmd("FileType", {
    pattern = languages,
    callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})

vim.api.nvim_create_autocmd("PackChanged", {
    callback = function(event)
        if event.data.kind ~= "install" and event.data.kind ~= "update" then
            return
        end

        if event.data.spec.name == "nvim-treesitter" then
            vim.schedule(function()
                pcall(function()
                    treesitter.update(nil, { summary = true })
                end)
            end)
        end
    end,
})

vim.schedule(function()
    pcall(ensure_parsers)
end)

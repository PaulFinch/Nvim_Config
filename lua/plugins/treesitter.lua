vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
}, {
    confirm = false,
})

local treesitter = require("nvim-treesitter")

local languages = {
    "bash",
    "c",
    "cpp",
    "markdown",
    "python",
    "rust",
    "go",
    "json",
    "yaml",
    "regex",
    "lua",
    "vim",
    "vimdoc",
    "query",
}

treesitter.setup({})

vim.api.nvim_create_user_command("BuildTreeSitter", function()
    local installed = {}
    for _, lang in ipairs(treesitter.get_installed("parsers")) do
        installed[lang] = true
    end

    local missing = vim.tbl_filter(function(lang)
        return not installed[lang]
    end, languages)

    local existing = vim.tbl_filter(function(lang)
        return installed[lang]
    end, languages)

    if #missing > 0 then
        treesitter.install(missing, { summary = true }):wait(120000)
    end

    if #existing > 0 then
        treesitter.update(existing, { summary = true }):wait(120000)
    end
end, {
    desc = "Install and update configured treesitter parsers",
})

vim.api.nvim_create_autocmd("FileType", {
    desc = "Enable treesitter highlighting and indentation",
    pattern = {
        "bash",
        "c",
        "cpp",
        "go",
        "json",
        "lua",
        "markdown",
        "python",
        "regex",
        "rust",
        "sh",
        "yaml",
    },
    callback = function(args)
        local ok = pcall(vim.treesitter.start, args.buf)
        if ok then
            vim.bo[args.buf].indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
        end
    end,
})

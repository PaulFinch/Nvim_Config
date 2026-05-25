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
}

treesitter.setup({})

vim.api.nvim_create_user_command("BuildTreeSitter", function()
    treesitter.install(languages)
    treesitter.update(languages)
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
    callback = function()
        pcall(vim.treesitter.start)
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
    end,
})

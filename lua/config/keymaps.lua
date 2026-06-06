-- Search
vim.keymap.set("n", "<leader>sc", "<cmd>Telescope commands<cr>", { desc = "[S]earch [C]ommands" })
vim.keymap.set("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", { desc = "[S]earch [K]eymaps" })
vim.keymap.set("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { desc = "[S]earch [F]iles" })
vim.keymap.set("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { desc = "[S]earch [G]rep" })
vim.keymap.set("n", "<leader>sp", "<cmd>Telescope project<cr>", { desc = "[S]earch [P]roject" })
vim.keymap.set("n", "<leader>st", "<cmd>TodoTelescope<cr>", { desc = "[S]earch [T]odo" })
vim.keymap.set("n", "<leader>sa", "<cmd>Telescope aerial<cr>", { desc = "[S]earch [A]erial" })

-- Toggle
vim.keymap.set("n", "<leader>ta", "<cmd>AerialToggle<cr>", { desc = "[T]oggle [A]erial" })
vim.keymap.set("n", "<leader>tt", function()
    local bufnr = vim.api.nvim_get_current_buf()

    if vim.treesitter.highlighter.active[bufnr] then
        vim.treesitter.stop(bufnr)
    else
        pcall(vim.treesitter.start, bufnr)
    end
end, { desc = "[T]oggle [T]reeSitter" })

vim.keymap.set("n", "<leader>tf", function()
    require("neo-tree.command").execute({
        source = "filesystem",
        toggle = true,
        reveal = true,
    })
end, { desc = "[T]oggle [F]ile Explorer" })

-- Format
vim.keymap.set("n", "<leader>ff", function()
    require("conform").format({
        async = true,
        lsp_format = "fallback",
    })
end, { desc = "[F]ormat [F]ile" })

-- Package
vim.keymap.set("n", "<leader>pu", function()
    vim.cmd.BuildBlink()
    vim.cmd.MasonToolsUpdate()
    vim.pack.update()
end, { desc = "[P]ackage [U]pdate" })

-- Yank
vim.api.nvim_create_autocmd("TextYankPost", {
    desc = "Highlight when yanking (copying) text",
    group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
    callback = function()
        vim.hl.on_yank()
    end,
})

local plugin_modules = {
  "plugins.blink",
  "plugins.conform",
  "plugins.gitsigns",
  "plugins.lsp",
  "plugins.mason",
  "plugins.mini-pairs",
  "plugins.mini-statusline",
  "plugins.mini-surround",
  "plugins.noice",
  "plugins.treesitter",
  "plugins.which-key",
  "plugins.neo-tree",
  "plugins.telescope",
  "plugins.monokai-pro",
}

local shared_specs = {
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/MunifTanjim/nui.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
}

local specs = vim.deepcopy(shared_specs)

vim.api.nvim_create_autocmd("PackChanged", {
  callback = function(event)
    local plugin = event.data.spec.name
    local kind = event.data.kind

    if plugin ~= "telescope-fzf-native.nvim" or (kind ~= "install" and kind ~= "update") then
      return
    end

    local result = vim.system({ "make" }, { cwd = event.data.path }):wait()
    if result.code ~= 0 then
      vim.notify("Failed to build telescope-fzf-native.nvim", vim.log.levels.ERROR)
    end
  end,
})

for _, module in ipairs(plugin_modules) do
  local plugin = require(module)
  vim.list_extend(specs, plugin.specs)
end

vim.pack.add(specs, { load = true, confirm = true })

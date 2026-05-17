require("config.options")
require("config.keymaps")

vim.pack.add({
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/MunifTanjim/nui.nvim" },
  { src = "https://github.com/Saghen/blink.lib" },
  { src = "https://github.com/Saghen/blink.cmp" }, 
  { src = "https://github.com/nvim-telescope/telescope.nvim" },
  { src = "https://github.com/folke/which-key.nvim" },
  { src = "https://github.com/nvim-treesitter/nvim-treesitter" },
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
  { src = "https://github.com/echasnovski/mini.nvim" },
  { src = "https://github.com/lewis6991/gitsigns.nvim" },
  { src = "https://github.com/loctvl842/monokai-pro.nvim" },
  { src = "https://github.com/folke/noice.nvim" },
  { src = "https://github.com/rcarriga/nvim-notify" },
})

require("plugins.colorscheme")
require("plugins.which-key")
require("plugins.blink")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.neo-tree")
require("plugins.statusline")
require("plugins.gitsigns")
require("plugins.noice")

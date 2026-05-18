vim.pack.add({
  { src = "https://github.com/folke/todo-comments.nvim" },
},{
  confirm = false,
})

local todo = require("todo-comments")

todo.setup({})

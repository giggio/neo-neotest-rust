local M = {}

function M.say_hello()
  print("Hello from Neovim!")
end

function M.setup(opts)
  vim.api.nvim_create_user_command("HelloWorld", M.say_hello, {})
  local adapter = require("neo-neotest-rust.adapter")(opts)
  return adapter
end

return M

local M = {}

M.config = function()
  vim.g.gitblame_message_template = "      <author>, <date> • <summary>"
  vim.g.gitblame_date_format = "%r"
end

return M

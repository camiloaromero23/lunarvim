--
-- Activate LunarVim tailwindcss lsp configuration only
-- if project seems to have a tailwindcss dependency
--
local utils = require "user.lsp.utils"

local options = {
  cmd = {
    "tailwindcss-language-server",
    "--stdio",
  },
}

if utils.project_has_tailwindcss_dependency() == true then
  require("lvim.lsp.manager").setup("tailwindcss", options)
end

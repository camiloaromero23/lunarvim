-- lvim.lang.lua.formatters = {
--   {
--     exe = "stylua",
--   },
-- }

local formatters = require "lvim.lsp.null-ls.formatters"
local linters = require "lvim.lsp.null-ls.linters"

formatters.setup {
  {
    exe = "stylua",
  },
}

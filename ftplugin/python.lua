local formatters = require "lvim.lsp.null-ls.formatters"
local linters = require "lvim.lsp.null-ls.linters"

formatters.setup {
  {
    exe = "black",
  },
}
linters.setup {
  {
    exe = "flake8",
  },
}

-- lvim.lang.python.formatters = { { exe = "autopep8" } }

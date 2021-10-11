local M = {}
M.config = function()
  lvim.builtin.lualine.options.theme = "material-nvim"

  lvim.builtin.lualine.on_config_done = function(lualine)
    local config = lualine.get_config()
    local components = require "lvim.core.lualine.components"
    local colors = require "lvim.core.lualine.colors"

    config.sections.lualine_a = { components.mode }
    config.sections.lualine_b = {}
    config.sections.lualine_c = { components.branch, components.filename, components.diff }
    config.sections.lualine_x = {
      components.diagnostics,
      components.filetype,
      components.lsp,
      components.encoding,
      components.location,
    }
    components.scrollbar.color = { bg = colors.bg, fg = "#ADD8E6" }
    config.sections.lualine_z = { components.scrollbar }
    lualine.setup(config)
  end
end
return M

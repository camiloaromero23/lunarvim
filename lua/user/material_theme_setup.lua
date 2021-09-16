local M = {}

M.config = function()
  vim.g.material_style = "darker"
  local status_ok, material = pcall(require, "material")
  if not status_ok then
    return
  end
  material.setup {
    contrast = true,
    italics = {
      comments = true,
      keywords = true,
      tags = true,
      functions = false,
      variables = false,
      strings = false,
    },
    custom_colors = { accent = "#ADD8E6" },
  }
  lvim.colorscheme = "material"
end

return M

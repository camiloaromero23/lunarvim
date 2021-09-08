local M = {}
M.config = function()
  lvim.builtin.treesitter.ensure_installed = "maintained"
  lvim.builtin.treesitter.autotag.enable = true
  lvim.builtin.treesitter.highlight.enabled = true
end
return M

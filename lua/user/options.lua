local options = {
  hlsearch = false,
  cmdheight = 1,
  relativenumber = true,
  foldenable = false,
  foldmethod = "expr",
  foldexpr = "nvim_treesitter#foldexpr()",
  laststatus = 3,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end

lvim.format_on_save = true
lvim.lint_on_save = true

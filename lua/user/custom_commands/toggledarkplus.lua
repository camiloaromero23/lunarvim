vim.api.nvim_create_user_command("ToggleDarkPlus", function()
  print(lvim.colorscheme)
  if lvim.colorscheme == "material" then
    lvim.colorscheme = "darkplus"
    vim.cmd [[colorscheme darkplus]]
  else
    lvim.colorscheme = "material"
    vim.cmd [[colorscheme material]]
  end
end, {})

local M = {}

M.wrapenabled = false
function M.toggleWrap()
  if M.wrapenabled == true then
    vim.opt.linebreak = false
    vim.opt.wrap = false
    vim.keymap.del({ "n", "v" }, "j")
    vim.keymap.del({ "n", "v" }, "k")
    vim.keymap.del({ "n", "v" }, "0")
    vim.keymap.del({ "n", "v" }, "$")
    M.wrapenabled = false
  else
    vim.opt.linebreak = true
    vim.opt.wrap = true
    vim.keymap.set({ "n", "v" }, "j", "gj")
    vim.keymap.set({ "n", "v" }, "k", "gk")
    vim.keymap.set({ "n", "v" }, "0", "g0")
    vim.keymap.set({ "n", "v" }, "$", "g$")
    M.wrapenabled = true
  end
end

return M

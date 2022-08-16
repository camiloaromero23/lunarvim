lvim.leader = "space"
local keymaps = {
  normal_mode = {
    ["N"] = "Nzzzv",
    ["n"] = "nzzzv",
    ["J"] = "mzJ`z",
    ["<C-8>"] = ":%s/<c-r><c-w>/",
    ["<leader>se"] = ":LspStop emmet_ls<CR>",
    ["<S-l>"] = ":BufferLineCycleNext<CR>",
    ["<S-h>"] = ":BufferLineCyclePrev<CR>",
  },
  insert_mode = {
    [","] = ",<c-g>u",
    ["."] = ".<c-g>u",
  },
  -- visual_mode = {},
}
for mode, mappings in pairs(keymaps) do
  for k, v in pairs(mappings) do
    lvim.keys[mode][k] = v
  end
end
local functions = require "user.functions"
vim.keymap.set({ "n", "v" }, " tw", functions.toggleWrap, { noremap = true, silent = true })
-- vim.keymap.set({ "n", "v" }, "<leader>tw", functions.toggleWrap())

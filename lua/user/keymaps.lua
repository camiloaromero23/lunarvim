lvim.leader = "space"
local keymaps = {
  normal_mode = {
    ["Y"] = "y$",
    ["N"] = "Nzzzv",
    ["n"] = "nzzzv",
    ["J"] = "mzJ`z",
    ["<C-P>"] = ":RnvimrToggle\n",
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

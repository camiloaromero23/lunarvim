local ok, actions = pcall(require, "telescope.actions")
if not ok then
  return
end
local mappings = lvim.builtin.telescope.defaults.mappings

mappings.i["<C-n>"] = actions.cycle_history_next
mappings.i["<C-p>"] = actions.cycle_history_prev
mappings.i["<C-j>"] = actions.move_selection_next
mappings.i["<C-k>"] = actions.move_selection_previous
mappings.n["<C-j>"] = actions.move_selection_next
mappings.n["<C-k>"] = actions.move_selection_previous
mappings.n["<C-c>"] = actions.close

local M = {}

local augroup = vim.api.nvim_create_augroup

M.autorun = augroup("AutoRun", { clear = true })
M.autorun = augroup("AutoTex", { clear = true })
M.rustSetInlayHints = augroup("RustSetInlayHints", {})
M.noNewLineComments = augroup("NoNewLineComments", {})
M.winbar = augroup("WinBar", {})

return M

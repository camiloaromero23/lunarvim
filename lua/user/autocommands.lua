local augroups = require "user.augroups"

vim.api.nvim_create_autocmd("TextChangedI", {
  group = augroups.rustSetInlayHints,
  pattern = { "*.rs" },
  command = "RustSetInlayHints",
})

vim.cmd "autocmd BufEnter * ++nested if winnr('$') == 1 && bufname() == 'NvimTree_' . tabpagenr() | quit | endif"

vim.api.nvim_create_autocmd({ "CursorMoved", "BufWinEnter", "BufFilePost" }, {
  group = augroups.winbar,
  callback = function()
    local winbar_filetype_exclude = {
      "help",
      "startify",
      "dashboard",
      "packer",
      "neogitstatus",
      "NvimTree",
      "Trouble",
      "alpha",
      "lir",
      "Outline",
      "spectre_panel",
      "toggleterm",
    }

    if vim.tbl_contains(winbar_filetype_exclude, vim.bo.filetype) then
      vim.opt_local.winbar = nil
      return
    end

    pcall(function()
      local winbar = require "user.winbar"
      local value = winbar.gps()

      if value == nil then
        value = winbar.filename()
      end

      vim.opt_local.winbar = value
    end)
  end,
})

vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  group = augroups.noNewLineComments,
  callback = function()
    vim.cmd "set formatoptions-=cro"
  end,
})

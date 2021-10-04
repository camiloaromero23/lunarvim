local M = {}

M.config = function()
  local status_ok, rainbow = pcall(require, "nvim-treesitter.configs")
  if not status_ok then
    return
  end

  rainbow.setup {
    rainbow = {
      enable = true,
      extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
      max_file_lines = nil, -- Do not enable for files with more than n lines, int
      colors = {
        "Gold",
        "Orchid",
        "LightSkyBlue",
    }, -- table of hex strings
      -- termcolors = {} -- table of colour name strings
    },
  }
end

return M

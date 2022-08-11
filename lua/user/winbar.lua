local M = {}

local status_gps_ok, gps = pcall(require, "nvim-gps")
if not status_gps_ok then
  return
end

local function isempty(s)
  return s == nil or s == ""
end

M.filename = function()
  ---@diagnostic disable-next-line: missing-parameter
  local filename = vim.fn.expand("%"):match "([^/]+)$"

  if isempty(filename) then
    return
  end

  local default_file_icon = ""
  local default_file_icon_color = ""

  ---@diagnostic disable-next-line: missing-parameter
  local file_name = vim.fn.expand "%:t"
  ---@diagnostic disable-next-line: missing-parameter
  local file_extension = vim.fn.expand "%:e:e"
  local file_icon, file_icon_color = require("nvim-web-devicons").get_icon_color(
    ---@diagnostic disable-next-line: missing-parameter
    file_name,
    file_extension,
    { default = true }
  )

  if file_icon == nil or file_icon == "" or file_icon == "" then
    ---@diagnostic disable-next-line: missing-parameter
    file_extension = vim.fn.expand "%:e"
  end

  local hl_group = "WinBarFileIconColor"

  vim.api.nvim_set_hl(0, hl_group, { fg = file_icon_color })
  if file_icon == nil then
    file_icon = default_file_icon
    file_icon_color = default_file_icon_color
  end
  return " " .. "%#" .. hl_group .. "#" .. file_icon .. "%*" .. " " .. filename .. "%*"
end

M.gps = function()
  local status_ok, gps_location = pcall(gps.get_location, {})
  if not status_ok then
    return
  end

  local icons = require "user.icons"

  if not gps.is_available() then -- Returns boolean value indicating whether a output can be provided
    return
  end

  local retval = M.filename()

  if gps_location == "error" then
    return ""
  else
    if not isempty(gps_location) then
      return retval .. " " .. icons.ui.ChevronRight .. " " .. gps_location
    else
      return retval
    end
  end
end

return M

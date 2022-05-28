-- Options
require "user.options"

-- Autocommands
require "user.autocommands"

-- Material theme
require("user.material_theme_setup").config()

-- Lualine
require("user.lualine_setup").config()

-- Keymappings
require "user.keymaps"

-- LSP
require "user.lsp_setup"

-- Builtins
require "user.builtins_setup"

-- Treesitter
require("user.treesitter_setup").config()

-- WinBar
require "user.winbar"

-- Additional Plugins
require "user.plugins"

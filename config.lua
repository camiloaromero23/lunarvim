-- General
lvim.format_on_save = true
lvim.lint_on_save = true
vim.opt.hlsearch = false
vim.opt.cmdheight = 1
vim.opt.relativenumber = true

-- Material theme
vim.g.material_style = "darker"
vim.g.material_contrast = true
vim.g.material_italic_comments = true
vim.g.material_italic_keywords = true
vim.g.material_italic_tag = true
-- vim.g.material_disable_background = true
vim.g.material_custom_colors = { accent = "#ADD8E6" }
lvim.colorscheme = "material"

-- Keymappings
lvim.leader = "space"
-- overwrite the key-mappings provided by LunarVim for any mode, or leave it empty to keep them
local keymaps = {
  normal_mode = {
    ["Y"] = "y$",
    ["N"] = "Nzzzv",
    ["n"] = "nzzzv",
    ["J"] = "mzJ`z",
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

-- LSP
require("user.json_schemas").setup()
-- lvim.lsp.diagnostics.update_in_insert = false

-- Builtins
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.show_icons.git = 0
lvim.builtin.nvimtree.hide_dotfiles = 0
lvim.builtin.nvimtree.ignore = { ".git", ".cache" }
-- lvim.builtin.dap.active = true

-- Treesitter
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.autotag.enable = true
lvim.builtin.treesitter.highlight.enabled = true

-- Additional Plugins
lvim.plugins = {
  -- {
  --   "lunarvim/colorschemes",
  -- },
  {
    "marko-cerovac/material.nvim",
  },
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({ "*" }, {
        RGB = true, -- #RGB hex codes
        RRGGBB = true, -- #RRGGBB hex codes
        names = true, -- "Name" codes like Blue
        RRGGBBAA = true, -- #RRGGBBAA hex codes
        rgb_fn = true, -- CSS rgb() and rgba() functions
        hsl_fn = true, -- CSS hsl() and hsla() functions
        css = true, -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      })
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
  },
  {
    "fatih/vim-go",
  },
  {
    "f-person/git-blame.nvim",
    config = function()
      vim.g.gitblame_message_template = "      <author>, <date> • <summary>"
      vim.g.gitblame_date_format = "%r"
    end,
  },
  {
    "tpope/vim-fugitive",
  },
  {
    "ray-x/lsp_signature.nvim",
    event = "InsertEnter",
    config = function()
      require("user.lsp_signature").config()
    end,
  },
}

-- General
require "user.general_setup"

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
      require("user.nvim_colorizer").config()
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
      require("user.git_blame").config()
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
  {
    "andymass/vim-matchup",
    event = "CursorMoved",
    config = function()
      require "user.matchup"
    end,
  },
  -- {
  --   "lukas-reineke/indent-blankline.nvim",
  --   config = function()
  --     require("user.indent-blankline").config()
  --   end,
  -- },
  {
    "p00f/nvim-ts-rainbow",
    config = function()
      require("user.ts-rainbow").config()
    end,
  },
  {
    "kevinhwang91/rnvimr",
    cmd = "RnvimrToggle",
    config = function()
      vim.g.rnvimr_draw_border = 1
      vim.g.rnvimr_pick_enable = 1
      vim.g.rnvimr_bw_enable = 1
    end,
  },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  -- {
  --   "github/copilot.vim",
  --   config = function()
  --     vim.g.copilot_no_tab_map = true
  --     vim.cmd [[
  --               imap <silent><script><expr> <C-E> copilot#Accept("\<CR>")
  --     ]]
  --   end,
  -- },
}

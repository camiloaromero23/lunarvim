lvim.plugins = {
  {
    "lunarvim/colorschemes",
  },
  {
    "SmiteshP/nvim-gps",
    config = function()
      require("user.gps").config()
    end,
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
    config = function()
      require("user.vim-go").config()
    end,
    ft = { "go" },
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
    "tpope/vim-surround",
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
  {
    "lukas-reineke/indent-blankline.nvim",
    config = function()
      require("user.indent-blankline").config()
    end,
  },
  -- {
  --   "kevinhwang91/rnvimr",
  --   cmd = "RnvimrToggle",
  --   config = function()
  --     vim.g.rnvimr_draw_border = 1
  --     vim.g.rnvimr_pick_enable = 1
  --     vim.g.rnvimr_bw_enable = 1
  --   end,
  -- },
  {
    "iamcco/markdown-preview.nvim",
    run = "cd app && npm install",
    ft = "markdown",
    config = function()
      vim.g.mkdp_auto_start = 1
    end,
  },
  {
    "simrat39/rust-tools.nvim",
    config = function()
      require("user.rust_tools").config()
    end,
    ft = { "rust", "rs" },
  },
  {
    "thosakwe/vim-flutter",
    ft = { "dart" },
  },
  {
    "github/copilot.vim",
    config = function()
      vim.g.copilot_no_tab_map = true
      vim.cmd [[ imap <silent><script><expr> <Right> copilot#Accept("") ]]
      -- vim.g.copilot_node_command = "/usr/local/n/versions/node/16.14.2/bin/node"
    end,
  },
  {
    "p00f/nvim-ts-rainbow",
    config = function()
      require("user.ts-rainbow").config()
    end,
  },
  {
    "marko-cerovac/material.nvim",
  },
  {
    "metakirby5/codi.vim",
  },
}

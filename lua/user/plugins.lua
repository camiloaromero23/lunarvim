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
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("user.nvim_colorizer").config()
    end,
  },
  {
    "windwp/nvim-ts-autotag",
    config = function()
      require "user.autotag"
    end,
    requires = { "nvim-treesitter/nvim-treesitter" },
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
      require "user.rust_tools"
    end,
    ft = { "rust", "rs" },
  },
  -- {
  --   "thosakwe/vim-flutter",
  --   ft = { "dart" },
  -- },
  {
    "nvim-treesitter/nvim-treesitter-context",
    config = function()
      require("user.treesitter-context").config()
    end,
  },
  {
    "p00f/nvim-ts-rainbow",
  },
  {
    "marko-cerovac/material.nvim",
  },
}

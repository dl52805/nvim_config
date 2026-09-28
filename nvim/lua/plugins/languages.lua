return {
  "neovim/nvim-lspconfig",
  {
    "nvim-treesitter/nvim-treesitter",
    lazy = false,
    build = ':TSUpdate',
  },
  {
    "mfussenegger/nvim-jdtls"
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^9", -- Recommended
  },
  {
    "timmyjose-projects/lox.vim"
  },
  {
    "windwp/nvim-ts-autotag",
  },
  {
    "lervag/vimtex",
    lazy = false,     -- we don't want to lazy load VimTeX
    -- tag = "v2.15", -- uncomment to pin to a specific release
    init = function()
      -- VimTeX configuration goes here, e.g.
      vim.g.vimtex_view_method = "skim"
    end,
  },
  {
    'nvim-flutter/flutter-tools.nvim',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
      'stevearc/dressing.nvim', -- optional for vim.ui.select
    },
    config = {
      widget_guides = {
        -- enabled = true,
        enabled = false,
      },
    },
  },
  -- neovim plugins not supported
  --[[
  {
    "wojciech-kulik/xcodebuild.nvim",
    dependencies = {
      "nvim-telescope/telescope.nvim",
      "MunifTanjim/nui.nvim",
    },
    cond = function() return jit.os == "OSX" end,
    config = function()
      require("xcodebuild").setup({
      })
    end,
  },
  --]]
}

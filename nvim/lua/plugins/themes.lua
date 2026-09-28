return {
  {
    "everviolet/nvim", name = "evergarden",
    priority = 1000,
    opts = {
      theme = {
        variant = 'fall', -- 'winter'|'fall'|'spring'|'summer'
        accent = 'green',
      },
      editor = {
        transparent_background = false,
        sign = { color = 'none' },
        float = {
          color = 'mantle',
          invert_border = false,
        },
        completion = {
          color = 'surface0',
        },
      },
    }
  },
  {
    "oahlen/iceberg.nvim",
    priority = 1000,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      plugins = {
        cmp = true,
        fzf = true,
      },
    },
  },
  {
    "EdenEast/nightfox.nvim",
  },
  {
    "sainnhe/gruvbox-material",
  },
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    priority = 1000
  },
  {
    "marko-cerovac/material.nvim",
    priority = 1000
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "hard",
      })
    end,
  },
  {
    'Mofiqul/vscode.nvim',
    config = function()
      local c = require('vscode.colors').get_colors()

      require('vscode').setup({
        style = 'dark',
        italic_comments = false,
        underline_links = true,
      })
    end,
  },
  {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
      require("rose-pine").setup({
        variant = "moon",
      })
    end,
  },
  {
    'fynnfluegge/monet.nvim',
    name = "monet",
    config = function()
      require("monet").setup {
        transparent_background = false,
        semantic_tokens = true,
        dark_mode = true,
        highlight_overrides = {
          Comment = { fg = "#565f89", bg = "NONE", italic = false },
        },
        color_overrides = {
          grey5 = "#565f89",
        },
        styles = {},
      }
    end,
  },
  {
    "rktjmp/lush.nvim",
  },
  {
    dir = "~/nvim_configs/themes/specular",
    lazy = false,
    enabled = function() return jit.os == "OSX" end
  },
  {
    dir = "~\\nvim_themes\\specular",
    lazy = false,
    enabled = function() return jit.os == "Windows" end
  },
  {
    'olivercederborg/poimandres.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('poimandres').setup {}
    end,
  },
  {
    "AlexvZyl/nordic.nvim",
  },
  {
    "Aejkatappaja/sora",
    lazy = false,
    priority = 1000,
    opts = {},
    config = function(_, opts)
      require("sora").setup(opts)
    end,
  },
  {
    "Aejkatappaja/cendre",
    lazy = false,
    priority = 1000,
    config = function()
      require("cendre").setup({
        background = "hard", -- "hard" | "medium" | "soft"
        italic_virtual_text = false,
      })
    end,
  },
  {
    "pjhamera/national-parks-themes",
    lazy = false,
    priority = 1000,
  },
}

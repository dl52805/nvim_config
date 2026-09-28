return {
  "preservim/nerdtree",
  "PhilRunninger/nerdtree-visual-selection",
  "nvim-lualine/lualine.nvim",
  "BurntSushi/ripgrep",
  "tpope/vim-commentary",
  "stevearc/oil.nvim",
  {
    "yutkat/confirm-quit.nvim",
    event = "CmdlineEnter",
    opts = {}
  },
  "akinsho/bufferline.nvim",
  "chaoren/vim-wordmotion",
  "tiagovla/scope.nvim",
  "chomosuke/term-edit.nvim",
  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    config = true
    -- use opts = {} for passing setup options
    -- this is equivalent to setup({}) function
  },
  "mbbill/undotree",
  {
    "m00qek/baleia.nvim",
    config = function()
      vim.g.baleia = require("baleia").setup({})

      vim.api.nvim_create_user_command(
        "BaleiaColorize",
        function()
          vim.g.baleia.once(vim.api.nvim_get_current_buf())
        end,
        {bang = true}
      )

      vim.api.nvim_create_user_command("BaleiaLogs", vim.g.baleia.logger.show, {bang = true})
    end
  },
  {
    "preservim/vim-pencil",
    config = function()
      vim.cmd[[
      set nocompatible
      filetype plugin on

      let g:pencil#wrapModeDefault = 'soft'

      augroup pencil
      autocmd!
      autocmd FileType markdown,mkd call pencil#init()
      autocmd FileType text         call pencil#init()
      autocmd FileType tex          call pencil#init()
      autocmd FileType typst        call pencil#init()
      augroup END
      ]]
    end,
  },
  {
    "echasnovski/mini.surround",
    version = '*',
    config = function()
      require('mini.surround').setup()
    end
  },
  {
    -- archived but currently working
    'stevearc/dressing.nvim',
    opts = {},
  },
  {
    "eandrju/cellular-automaton.nvim",
    init = function()
      vim.keymap.set("n", "\\try", "<cmd>CellularAutomaton make_it_rain<CR>")
    end,
  },
  {
    "nmac427/guess-indent.nvim",
    init = function()
      require('guess-indent').setup({})
    end,
  },
}

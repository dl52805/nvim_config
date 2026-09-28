return {
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    opts = {
      picker = {
        enabled = true,
      },
      --[[
      indent = {
        enabled = true,
        animate = {
          -- enabled = vim.fn.has("nvim-0.10") == 1,
          enabled = false,
          style = "out",
          easing = "linear",
          duration = {
            step = 20, -- ms per step
            total = 500, -- maximum duration
          },
        },
      },
      --]]
    },
    keys = {
      { "\\<space>", function() Snacks.picker.smart() end, desc = "Smart Find Files" },
      { "<space>sf", function() Snacks.picker.files() end, desc = "Find Files" },
      { "<space>sb", function() Snacks.picker.buffers() end, desc = "Find Buffers" },
      { "<space>sc", function() Snacks.picker.command_history() end, desc = "Command History" },
      { "<space>se", function() Snacks.explorer() end, desc = "Explorer" },
      { "<space>sg", function() Snacks.picker.grep() end, desc = "Grep" },
      {
        "<space>sw", function() Snacks.picker.grep_word() end, desc = "Grep Word",
        mode = { "n", "x" },
      },
      {
        "<space>gb",
        function() Snacks.picker.grep_buffers() end,
        desc = "Grep Buffers",
      },
      {
        "<space>snsh",
        function() Snacks.picker.search_history() end,
        desc = "Search History",
      },
      {
        "<space>sd",
        function() Snacks.picker.diagnostics() end,
        desc = "Lsp Diagnostics",
      },
      {
        "<space>ld",
        function() Snacks.picker.lsp_definitions() end,
        desc = "Lsp Diagnostics",
      },
      {
        "<space>de",
        function() Snacks.picker.lsp_declarations() end,
        desc = "Lsp Declaration",
      },
      {

        "<space>lr",
        function() Snacks.picker.lsp_references() end,
        desc = "Lsp References",
      },
      {
        "<space>li",
        function() Snacks.picker.lsp_implementations() end,
        desc = "Lsp Implementations",
      },
      {
        "<space>td",
        function() Snacks.picker.lsp_type_definitions() end,
        desc = "Lsp Type Definitions",
      },
      {
        "<space>ls",
        function() Snacks.picker.lsp_symbols() end,
        desc = "LSP Symbols",
      },
      {
        "<space>sws",
        function() Snacks.picker.lsp_workspace_symbols() end,
        desc = "LSP Workspace Symbols",
      },
    },
  },
}


return {
    "nvim-treesitter/nvim-treesitter",
    "nvim-treesitter/playground",
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "preservim/nerdtree",
    -- "cohama/lexima.vim",
    "tpope/vim-surround",
    "PhilRunninger/nerdtree-visual-selection",
    "nvim-lualine/lualine.nvim",
    "BurntSushi/ripgrep",
    "tpope/vim-commentary",
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
    "stevearc/oil.nvim",
    {
        "yutkat/confirm-quit.nvim",
        event = "CmdlineEnter",
        opts = {}
    },
    "AlexvZyl/nordic.nvim",
    "neovim/nvim-lspconfig",
    -- "norcalli/nvim-colorizer.lua",
    "LukasPietzschmann/telescope-tabs",
    "ibhagwan/fzf-lua",
    -- 'marko-cerovac/material.nvim',
    "akinsho/bufferline.nvim",
    "folke/lazydev.nvim",
    --[[
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-vsnip',
    'hrsh7th/vim-vsnip',
    --]]
    "EdenEast/nightfox.nvim",
    "chaoren/vim-wordmotion",
    "tiagovla/scope.nvim",
    "sainnhe/gruvbox-material",
    -- 'rose-pine/neovim',
    "rebelot/kanagawa.nvim",
    "chomosuke/term-edit.nvim",
    --[[
    {
        "brenton-leighton/multiple-cursors.nvim",
        version = "*", -- Use the latest tagged version
        opts = {
            custom_key_maps = {
                {"n", "<Leader>|", function()
                        require("multiple-cursors").align()
                    end}
            }
        }, -- This causes the plugin setup function to be called
        keys = {
            {
                "<C-j>",
                "<Cmd>MultipleCursorsAddDown<CR>",
                mode = {"n", "x"},
                desc = "Add cursor and move down"
            },
            {
                "<C-k>",
                "<Cmd>MultipleCursorsAddUp<CR>",
                mode = {"n", "x"},
                desc = "Add cursor and move up"
            },
            {
                "<C-Up>",
                "<Cmd>MultipleCursorsAddUp<CR>",
                mode = {"n", "i", "x"},
                desc = "Add cursor and move up"
            },
            {
                "<C-Down>",
                "<Cmd>MultipleCursorsAddDown<CR>",
                mode = {"n", "i", "x"},
                desc = "Add cursor and move down"
            },
            {
                "<C-LeftMouse>",
                "<Cmd>MultipleCursorsMouseAddDelete<CR>",
                mode = {"n", "i"},
                desc = "Add or remove cursor"
            },
            {
                "<Leader>a",
                "<Cmd>MultipleCursorsAddMatches<CR>",
                mode = {"n", "x"},
                desc = "Add cursors to cword"
            },
            {
                "<Leader>A",
                "<Cmd>MultipleCursorsAddMatchesV<CR>",
                mode = {"n", "x"},
                desc = "Add cursors to cword in previous area"
            },
            {
                "<Leader>d",
                "<Cmd>MultipleCursorsAddJumpNextMatch<CR>",
                mode = {"n", "x"},
                desc = "Add cursor and jump to next cword"
            },
            {
                "<Leader>D",
                "<Cmd>MultipleCursorsJumpNextMatch<CR>",
                mode = {"n", "x"},
                desc = "Jump to next cword"
            },
            {
                "<Leader>l",
                "<Cmd>MultipleCursorsLock<CR>",
                mode = {"n", "x"},
                desc = "Lock virtual cursors"
            }
        }
    },
    --]]
    {
        "jake-stewart/multicursor.nvim",
        branch = "1.0",
        config = function()
            local mc = require("multicursor-nvim")

            mc.setup()

            local set = vim.keymap.set

            -- Add or skip cursor above/below the main cursor.
            set({"n", "x"}, "<up>",
                function() mc.lineAddCursor(-1) end)
            set({"n", "x"}, "<down>",
                function() mc.lineAddCursor(1) end)
            set({"n", "x"}, "<leader><up>",
                function() mc.lineSkipCursor(-1) end)
            set({"n", "x"}, "<leader><down>",
                function() mc.lineSkipCursor(1) end)

            -- Add or skip adding a new cursor by matching word/selection
            set({"n", "x"}, "<leader>n",
                function() mc.matchAddCursor(1) end)
            set({"n", "x"}, "<leader>s",
                function() mc.matchSkipCursor(1) end)
            set({"n", "x"}, "<leader>N",
                function() mc.matchAddCursor(-1) end)
            set({"n", "x"}, "<leader>S",
                function() mc.matchSkipCursor(-1) end)

            -- In normal/visual mode, press `mwap` will create a cursor in every match of
            -- the word captured by `iw` (or visually selected range) inside the bigger
            -- range specified by `ap`. Useful to replace a word inside a function, e.g. mwif.
            set({"n", "x"}, "mw", function()
                mc.operator({ motion = "iw", visual = true })
                -- Or you can pass a pattern, press `mwi{` will select every \w,
                -- basically every char in a `{ a, b, c, d }`.
                -- mc.operator({ pattern = [[\<\w]] })
            end)

            -- Press `mWi"ap` will create a cursor in every match of string captured by `i"` inside range `ap`.
            set("n", "mW", mc.operator)

            -- Add all matches in the document
            set({"n", "x"}, "<leader>A", mc.matchAllAddCursors)

            -- You can also add cursors with any motion you prefer:
            -- set("n", "<right>", function()
            --     mc.addCursor("w")
            -- end)
            -- set("n", "<leader><right>", function()
            --     mc.skipCursor("w")
            -- end)

            -- Rotate the main cursor.
            set({"n", "x"}, "<left>", mc.nextCursor)
            set({"n", "x"}, "<right>", mc.prevCursor)

            -- Delete the main cursor.
            set({"n", "x"}, "<leader>x", mc.deleteCursor)

            -- Add and remove cursors with control + left click.
            set("n", "<c-leftmouse>", mc.handleMouse)
            set("n", "<c-leftdrag>", mc.handleMouseDrag)
            set("n", "<c-leftrelease>", mc.handleMouseRelease)

            -- Easy way to add and remove cursors using the main cursor.
            set({"n", "x"}, "<c-q>", mc.toggleCursor)

            -- Clone every cursor and disable the originals.
            set({"n", "x"}, "<leader><c-q>", mc.duplicateCursors)

            set("n", "<esc>", function()
                if not mc.cursorsEnabled() then
                    mc.enableCursors()
                elseif mc.hasCursors() then
                    mc.clearCursors()
                else
                    -- Default <esc> handler.
                end
            end)

            -- bring back cursors if you accidentally clear them
            set("n", "<leader>gv", mc.restoreCursors)

            -- Align cursor columns.
            set("n", "<leader>a", mc.alignCursors)

            -- Split visual selections by regex.
            set("x", "S", mc.splitCursors)

            -- Append/insert for each line of visual selections.
            set("x", "I", mc.insertVisual)
            set("x", "A", mc.appendVisual)

            -- match new cursors within visual selections by regex.
            set("x", "M", mc.matchCursors)

            -- Rotate visual selection contents.
            set("x", "<leader>t",
                function() mc.transposeCursors(1) end)
            set("x", "<leader>T",
                function() mc.transposeCursors(-1) end)

            -- Jumplist support
            set({"x", "n"}, "<c-i>", mc.jumpForward)
            set({"x", "n"}, "<c-o>", mc.jumpBackward)

            -- Customize how cursors look.
            local hl = vim.api.nvim_set_hl
            hl(0, "MultiCursorCursor", { link = "Cursor" })
            hl(0, "MultiCursorVisual", { link = "Visual" })
            hl(0, "MultiCursorSign", { link = "SignColumn"})
            hl(0, "MultiCursorMatchPreview", { link = "Search" })
            hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
            hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
            hl(0, "MultiCursorDisabledSign", { link = "SignColumn"})
        end
    },
    "mbbill/undotree",
    {
        "cdmill/neomodern.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("neomodern").setup({})
        end,
    },
    --[[
    {
        "ray-x/go.nvim",
        dependencies = {  -- optional packages
            "ray-x/guihua.lua",
            "neovim/nvim-lspconfig",
            "nvim-treesitter/nvim-treesitter",
        },
        config = function()
            require("go").setup()
        end,
        event = {"CmdlineEnter"},
        ft = {"go", 'gomod'},
        build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all binaries
    },
    --]]
    "windwp/nvim-ts-autotag",
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        ---@type Flash.Config
        opts = {},
        -- stylua: ignore
        keys = {
            {"s", mode = {"n", "x", "o"}, function()
                    require("flash").jump()
                end, desc = "Flash"},
            {"S", mode = {"n", "x", "o"}, function()
                    require("flash").treesitter()
                end, desc = "Flash Treesitter"},
            {"r", mode = "o", function()
                    require("flash").remote()
                end, desc = "Remote Flash"},
            {"R", mode = {"o", "x"}, function()
                    require("flash").treesitter_search()
                end, desc = "Treesitter Search"},
            {"<c-s>", mode = {"c"}, function()
                    require("flash").toggle()
                end, desc = "Toggle Flash Search"}
        }
    },
    {
        "ej-shafran/compile-mode.nvim",
        branch = "latest",
        dependencies = {
            "nvim-lua/plenary.nvim"
        },
        config = function()
            --@type CompileModeOpts
            vim.g.compile_mode = {
                baleia_setup = true
            }
        end
    },
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
    "tpope/vim-dispatch",
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "sindrets/diffview.nvim"
        },
        config = true
    },
    --[[
    {
        'MeanderingProgrammer/render-markdown.nvim',
        opts = {
            file_types = { 'markdown', 'Avante' },
            log_level = 'debug',
            overrides = {
                buftype = {
                    nofile = {
                        render_modes = { 'n', 'c', 'i' },
                        debounce = 5,
                        code = {
                            left_pad = 0,
                            right_pad = 0,
                            language_pad = 0,
                        },
                    },
                },
                filetype = {},
            },
        },
        ft = { 'markdown', 'Avante' },
    },
    --]]
    {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim"
    },
    {
        "stevearc/conform.nvim"
    },
    {
        "mrcjkb/rustaceanvim",
        version = "^5", -- Recommended
        lazy = false -- This plugin is already lazy
    },
    {
        "stevearc/aerial.nvim",
        opts = {},
        config = function()
            require("aerial").setup(
                {
                    -- optionally use on_attach to set keymaps when aerial has attached to a buffer
                    on_attach = function(bufnr)
                        -- Jump forwards/backwards with '{' and '}'
                        vim.keymap.set("n", "<space>sa", "<cmd>AerialPrev<CR>", {buffer = bufnr})
                        vim.keymap.set("n", "<space>sd", "<cmd>AerialNext<CR>", {buffer = bufnr})
                    end
                }
            )

            vim.keymap.set("n", "<space>al", "<cmd>AerialToggle!<CR>")
        end,
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-tree/nvim-web-devicons"
        }
    },
    {
        "Zeioth/compiler.nvim",
        cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
        dependencies = {"stevearc/overseer.nvim", "nvim-telescope/telescope.nvim"},
        opts = {}
    },
    {
        "stevearc/overseer.nvim",
        commit = "6271cab7ccc4ca840faa93f54440ffae3a3918bd",
        cmd = {"CompilerOpen", "CompilerToggleResults", "CompilerRedo"},
        opts = {
            task_list = {
                direction = "bottom",
                min_height = 25,
                max_height = 25,
                default_detail = 1
            }
        }
    },
    {
        "deparr/tairiki.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("tairiki").setup {}
        end
    },
    {
        "Biscuit-Theme/nvim",
        config = function()
        end
    },
    {
        "mfussenegger/nvim-jdtls"
    },
    {
        "oskarrrrrrr/symbols.nvim",
        config = function()
            local r = require("symbols.recipes")
            require("symbols").setup(r.DefaultFilters, r.AsciiSymbols, {})
            vim.keymap.set("n", ",s", ":Symbols<CR>")
            vim.keymap.set("n", ",d", ":SymbolsClose<CR>")
        end
    },
    {
        "sidebar-nvim/sidebar.nvim"
    },
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000
    },
    --[[
    {
        "ferdinandrau/lavish.nvim",
        priority = 1000
    },
    --]]
    {
        "marko-cerovac/material.nvim",
        priority = 1000
    },
    {
        "timmyjose-projects/lox.vim"
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
        "X3eRo0/dired.nvim",
        dependencies = { "MunifTanjim/nui.nvim" },
        config = function()
            require("dired").setup {
                path_separator = "/",
                show_banner = false,
                show_icons = false,
                show_hidden = true,
                show_dot_dirs = true,
                show_colors = true,

                keybinds = {
                    dired_enter = "<cr>",
                    dired_back = "-",
                    dired_up = "_",
                    dired_rename = "R",
                    dired_quit = "q",
                },
            }
        end
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
    --[[
    {
        'L3MON4D3/LuaSnip',
        version = "v2.*",
        build = "make install_jsregexp",
    },
    --]]
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
        "meznaric/key-analyzer.nvim",
        config = function()
            require("key-analyzer").setup({
                -- Name of the command to use for the plugin
                command_name = "KeyAnalyzer", -- or nil to disable the command

                -- Customize the highlight groups
                highlights = {
                    bracket_used = "KeyAnalyzerBracketUsed",
                    letter_used = "KeyAnalyzerLetterUsed",
                    bracket_unused = "KeyAnalyzerBracketUnused",
                    letter_unused = "KeyAnalyzerLetterUnused",
                    promo_highlight = "KeyAnalyzerPromo",

                    -- Set to false if you want to define highlights manually
                    define_default_highlights = true,
                },
            })
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
        'stevearc/dressing.nvim',
        opts = {},
    },
    --[[
    {
        'olivercederborg/poimandres.nvim',
        lazy = false,
        priority = 1000,
        config = function()
            require('poimandres').setup {}
        end,
    },
    {
        "2nthony/vitesse.nvim",
        dependencies = {
            "tjdevries/colorbuddy.nvim",
        },
    },
    {
        "oxfist/night-owl.nvim",
        lazy = false, -- make sure we load this during startup if it is your main colorscheme
        priority = 1000, -- make sure to load this before all the other start plugins
        config = function()
            require("night-owl").setup()
        end,
    },
    --]]
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
    --[[
    {
        'nullromo/go-up.nvim',
        opts = {},
        config = function(_, opts)
            local goUp = require('go-up')
            goUp.setup(opts)
        end,
    },
    --]]
    {
        'lewpoly/sherbet.nvim',
        name = "sherbet",
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
    {
        "rktjmp/lush.nvim",
    },
    --[[
    {
        dir = "~/nvim_configs/themes/campfire",
        lazy = false,
        enabled = function() return jit.os == "OSX" end
    },
    --]]
    {
        "bassamsdata/namu.nvim",
        config = function()
            require("namu").setup({
                namu_symbols = {
                    enable = true,
                    options = {},
                },
                colorscheme = {
                    enable = false,
                    options = {
                        persist = true,
                        write_shada = false,
                    },
                },
                ui_select = { enable = false },
            })

            local namu = require("namu.namu_symbols")
            local colorscheme = require("namu.colorscheme")

            vim.keymap.set("n", "<space>xx",":Namu symbols<cr>" , {
                desc = "Jump to LSP symbol",
                silent = true,
            })

            vim.keymap.set("n", "<space>th",":Namu colorscheme<cr>" , {
                desc = "Colorscheme Picker",
                silent = true,
            })
        end,
    },
    {
        "diegoulloao/neofusion.nvim",
        priority = 1000,
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
        "vague2k/vague.nvim",
        config = function()
            -- NOTE: you do not need to call setup if you don't want to.
            require("vague").setup({
            -- optional configuration here
            })
        end
    },
    {
        "eandrju/cellular-automaton.nvim",
        init = function()
            vim.keymap.set("n", "\\try", "<cmd>CellularAutomaton make_it_rain<CR>")
        end,
    },
    {
        "atiladefreitas/dooing",
        config = function()
            require("dooing").setup({})
        end,
    },
    {
        "synaptiko/xit.nvim",
        run = function(plugin)
            plugin.config()
            vim.cmd[[:TSInstall! xit]]
        end,
        config = function()
            require('xit').setup()
        end,
        dependencies = { 'nvim-treesitter/nvim-treesitter' }
    },
    {
        "xzbdmw/clasp.nvim",
        config = function()
            require("clasp").setup({
                pairs = { ["{"] = "}", ['"'] = '"', ["'"] = "'", ["("] = ")", ["["] = "]", ["<"] = ">" },
                -- If called from insert mode, do not return to normal mode.
                keep_insert_mode = true,
            })

            -- jumping from smallest region to largest region
            vim.keymap.set({ "n", "i" }, "<c-l>",function()
                require("clasp").wrap('next')
            end)

            -- jumping from largest region to smallest region
            vim.keymap.set({ "n", "i" }, "<c-l>",function()
                require("clasp").wrap('prev')
            end)

            -- If you want to exclude nodes whose end row is not current row
            vim.keymap.set({ "n", "i" }, "<c-l>",function()
                require("clasp").wrap('next', function(nodes)
                    local n = {}
                    for _, node in ipairs(nodes) do
                        if node.end_row == vim.api.nvim_win_get_cursor(0)[1] - 1 then
                            table.insert(n, node)
                        end
                    end
                    return n
                end)
            end)
        end,
    },
    {
        "echasnovski/mini.trailspace",
        version = false,
    },
    {
        "nmac427/guess-indent.nvim",
        init = function()
            require('guess-indent').setup({})
        end,
    },
}

return {
    {
        "saghen/blink.cmp",
        lazy = false,
        dependencies = "rafamadriz/friendly-snippets",
        -- version = "v0.12.4",
        version = '1.*',
        -- version = "v0.6.2",
        opts = {
            keymap = {
                preset = 'none',
                ['<Up>'] = { 'select_prev', 'fallback' },
                ['<Down>'] = { 'select_next', 'fallback' },
                ['<C-e>'] = { 'hide', 'fallback' },
                ['<C-y>'] = { 'accept', 'fallback' },
                ['<C-0>'] = { 'snippet_forward', 'fallback' },
                ['<C-9>'] = { 'snippet_backward', 'fallback' },
                ['<C-s>'] = { 'show', 'fallback' },
            },
            snippets = {
                preset = 'luasnip',
                expand = function(snippet) require('luasnip').lsp_expand(snippet) end,
                active = function(filter)
                    if filter and filter.direction then
                        return require('luasnip').jumpable(filter.direction)
                    end
                    return require('luasnip').in_snippet()
                end,
                jump = function(direction) require('luasnip').jump(direction) end,
            },
            sources = {
                default = { "lsp", "path", "snippets", "buffer" },
                providers = {
                    lsp = {
                        module = "blink.cmp.sources.lsp",
                        name = "LSP",
                        fallbacks = { "buffer" },
                    },
                    path = {
                        module = "blink.cmp.sources.path",
                        name = "Path",
                        score_offset = 3,
                        fallbacks = { "buffer" },
                    },
                    snippets = {
                        module = "blink.cmp.sources.snippets",
                        name = "Snippets",
                        score_offset = -3
                    },
                    buffer = {
                        module = "blink.cmp.sources.buffer",
                        name = "Buffer",
                    },
                }
            },
            completion = {
                menu = {
                    auto_show = true,
                    min_width = 30,
                    draw = {
                        align_to = 'label',
                        padding = 1,
                        gap = 1,
                        treesitter = {},
                        columns = function(ctx)
                            if ctx.mode == "cmdline" then
                                return {
                                    { "label" },
                                }
                            else
                                return {
                                    { "kind_icon" },
                                    { "label", gap = 1 },
                                    { "kind" },
                                }
                            end
                        end,
                        components = {
                            kind_icon = {
                                ellipsis = false,
                                text = function(ctx) return ctx.kind_icon .. ctx.icon_gap end,
                                highlight = function(ctx) return ctx.kind_hl end,
                            },

                            kind = {
                                ellipsis = false,
                                width = { fill = true },
                                text = function(ctx) return ctx.kind end,
                                highlight = function(ctx) return ctx.kind_hl end,
                            },

                            label = {
                                width = { fill = true, max = 60, min = 60 },
                                text = function(ctx)
                                    return require("colorful-menu").blink_components_text(ctx)
                                end,
                                highlight = function(ctx)
                                    return require("colorful-menu").blink_components_highlight(ctx)
                                end,
                            },

                            label_description = {
                                width = { max = 20, min = 20 },
                                text = function(ctx)
                                    return ctx.label_description
                                end,
                                highlight = 'BlinkCmpLabelDescription',
                            },

                            source_name = {
                                width = { max = 20, min = 20 },
                                text = function(ctx) return ctx.source_name end,
                                highlight = 'BlinkCmpSource',
                            },
                        },
                    }
                },
                accept = { auto_brackets = { enabled = true }, dot_repeat = false, },
            },
            enabled = function()
                return not vim.tbl_contains({ "text", "markdown", "md" }, vim.bo.filetype) and vim.bo.buftype ~= "prompt"
            end,
            appearance = {
                highlight_ns = vim.api.nvim_create_namespace('blink_cmp'),
                use_nvim_cmp_as_default = false,
            },
            cmdline = {
                -- enabled = true,
                enabled = false,
                keymap = { preset = 'cmdline' },
                sources = function()
                    local type = vim.fn.getcmdtype()
                    -- Search forward and backward
                    if type == '/' or type == '?' then return { 'buffer' } end
                    -- Commands
                    if type == ':' or type == '@' then return { 'cmdline' } end
                    return {}
                end,
                completion = {
                    trigger = {
                        show_on_blocked_trigger_characters = {},
                        show_on_x_blocked_trigger_characters = {},
                    },
                    list = {
                        selection = {
                            -- When `true`, will automatically select the first item in the completion list
                            preselect = true,
                            -- When `true`, inserts the completion item automatically when selecting it
                            auto_insert = true,
                        },
                    },
                    -- Whether to automatically show the window when new completion items are available
                    menu = { auto_show = true },
                    -- Displays a preview of the selected item on the current line
                    ghost_text = { enabled = false }
                },
            },
        },
    },
}

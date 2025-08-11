local lspconfig = require("lspconfig")

local on_attach_gopls = function(client, bufnr)
    if client.name == 'gopls' then
        client.server_capabilities.semanticTokensProvider = {
            full = true,
            legend = {
                tokenTypes = { 
                    'namespace',
                    'type',
                    'class',
                    'enum',
                    'interface',
                    'struct',
                    'typeParameter',
                    'parameter',
                    'variable',
                    'property',
                    'enumMember',
                    'event',
                    'function',
                    'method',
                    'macro',
                    'keyword',
                    'modifier',
                    'comment',
                    'string',
                    'number',
                    'regexp',
                    'operator',
                    'decorator'
                },
                tokenModifiers = { 
                    'declaration',
                    'definition',
                    'readonly',
                    'static',
                    'deprecated',
                    'abstract',
                    'async',
                    'modification',
                    'documentation',
                    'defaultLibrary'
                }
            }
        }
    end
end

--[[
lspconfig.jdtls.setup({
    handlers = {
        ['textDocument/publishDiagnostics'] = function(...) end
    },
})
--]]

lspconfig.gopls.setup({
    on_attach = on_attach_gopls,
    settings = {
        gopls = {
            semanticTokens = true,
        }
    }
})

lspconfig.tinymist.setup({
    single_file_support = true,
    root_dir = function()
        return vim.fn.getcwd()
    end,
    settings = {},
})

lspconfig.clangd.setup({
    cmd = {
        "clangd",
        "-header-insertion=never",
    },
})
lspconfig.glsl_analyzer.setup({})
lspconfig.basedpyright.setup({})
lspconfig.ols.setup({})
-- rustaceanvim should automatically configure rust analyzer for us
-- lspconfig.rust_analyzer.setup({})
lspconfig.zls.setup({})
lspconfig.nim_langserver.setup({})
lspconfig.csharp_ls.setup({})

lspconfig.biome.setup({})
lspconfig.emmet_ls.setup({})
lspconfig.svelte.setup({})
lspconfig.ts_ls.setup({})

-- lspconfig.serve_d.setup({})

vim.o.pumheight = 15

vim.cmd[[ set scl=yes ]]

vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function ()
        -- Tokyo Night Colors
        -- #f7768e
        -- #ff9e64
        -- #e0af68
        -- #cfc9c2
        -- #9ece6a
        -- #73daca
        -- #b4f9f8
        -- #2ac3de
        -- #7aa2f7
        -- #bb9af7
        -- #c0caf5
        -- #7dcfff

        -- Neomodern Campfire Colors
        --[[
            alt      = "#abbceb",
            bg       = "#1b1a20",
            border   = "#393842",
            builtin  = "#8da0d6",
            comment  = "#686675",
            constant = "#e67e80",
            dim      = "#121112",
            fg       = "#bbbac1",
            float    = "#2d2b36",
            func     = "#53a8b8",
            keyword  = "#e69875",
            line     = "#1f1e26",
            operator = "#9b99a3",
            preproc  = "#b39581",
            property = "#8c8abd",
            string   = "#dbbc8a",
            type     = "#d6a56f",
            visual   = "#413f4d",
            error    = "#e67e80",
            hint     = "#8da0d6",
            warning  = "#ad9368",
            delta    = "#8da0d6",
            plus     = "#a7c080",
        --]]
        
        if (vim.g.colors_name == 'tokyonight-night') then
            vim.api.nvim_set_hl(0, '@type.builtin.java', { fg = '#7dcfff' })
            vim.api.nvim_set_hl(0, '@lsp.type.parameter.java', { fg='#d5cdc3' })
            vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.declaration.java', { fg='#e0af68' })
            vim.api.nvim_set_hl(0, '@keyword', { fg='#bb9af7' })

            vim.api.nvim_set_hl(0, '@lsp.type.parameter.go', { fg='#d5cdc3' })
            vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.definition.go', { fg='#e0af68' })

            -- vim.api.nvim_set_hl(0, 'htmlTagName', { fg='#f7768e' })
            -- vim.api.nvim_set_hl(0, 'htmlTag', { fg='#a43071' })
            -- vim.api.nvim_set_hl(0, 'htmlEndTag', { fg='#a43071' })
            vim.api.nvim_set_hl(0, 'htmlTagName', { fg='#bb9af7' })
            vim.api.nvim_set_hl(0, 'htmlTag', { fg='#7aa2f7' })
            vim.api.nvim_set_hl(0, 'htmlEndTag', { fg='#7aa2f7' })

            vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.label.dart', { fg='#7dcfff' })
            vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.declaration.dart', { fg='#e0af68' })
            vim.api.nvim_set_hl(0, '@lsp.type.parameter.dart', { fg='#d5cdc3' })

            vim.api.nvim_set_hl(0, '@lsp.type.parameter.c', { fg='#d5cdc3' })
            vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.declaration.c', { fg='#e0af68' })
            vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.definition.c', { fg='#e0af68' })

            vim.api.nvim_set_hl(0, '@lsp.type.parameter.cpp', { fg='#d5cdc3' })
            vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.declaration.cpp', { fg='#e0af68' })
            vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.definition.cpp', { fg='#e0af68' })

            vim.api.nvim_set_hl(0, 'FlutterWidgetGuides', { fg='#4f5c8a' })
        end

        if (vim.g.colors_name == 'tokyonight-moon') then
            vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.label.dart', { fg='#97d8ff' })
        end

        --[[
        if (vim.g.colors_name == 'material' and vim.g.material_style == 'deep ocean') then
            vim.api.nvim_set_hl(0, '@lsp.type.parameter.java', { fg='#d5cdc3' })

            vim.api.nvim_set_hl(0, '@keyword.modifier.java', { fg='#bb9af7' })
            vim.api.nvim_set_hl(0, '@keyword.type.java', { fg='#bb9af7' })
            vim.api.nvim_set_hl(0, '@keyword.import.java', { fg='#bb9af7' })
            vim.api.nvim_set_hl(0, '@keyword.return.java', { fg='#bb9af7' })

            vim.api.nvim_set_hl(0, '@type.builtin.java', { fg = '#7dcfff' })
            vim.api.nvim_set_hl(0, '@lsp.typemod.parameter.declaration.java', { fg='#e0af68' })
        end
        --]]

        --[[
        if (vim.g.colors_name == 'rose-pine') then
            vim.api.nvim_set_hl(0, '@lsp.type.namespace.go', { fg='#c4a7e7' })
        end
        --]]

        --[[
        if (vim.g.colors_name == 'neomodern') then
            vim.api.nvim_set_hl(0, '@lsp.type.type.cpp', { fg='#abbceb' })
            vim.api.nvim_set_hl(0, '@lsp.type.class.cpp', { fg='#a7c080' })
            vim.api.nvim_set_hl(0, 'ModeMsg', { fg='#a6c080' })
        end
        --]]

        if (vim.g.colors_name == 'duskfox') then
            vim.api.nvim_set_hl(0, '@lsp.type.pol.typst', {})
            vim.api.nvim_set_hl(0, '@lsp.type.number.typst', { fg='#ea9a97' })
            vim.api.nvim_set_hl(0, '@constant.typst', { fg='#f6c177' })
            vim.api.nvim_set_hl(0, '@variable.member.typst', { fg='#eb6f96' })
            vim.api.nvim_set_hl(0, '@lsp.type.function.typst', { fg='#65b1cd' })
        end

        if (vim.g.colors_name == 'nordic') then
            vim.api.nvim_set_hl(0, 'MatchParen', { underline = false, bg = '#465369' })
        end
       
        -- vim.api.nvim_set_hl(0, '@lsp.type.parameter', { fg='Purple' })
        -- vim.api.nvim_set_hl(0, '@lsp.mod.readonly', { italic=true })

        if (vim.g.colors_name == 'campfire') then
            vim.api.nvim_set_hl(0, '@lsp.type.type.cpp', { fg='#abbceb' })
            vim.api.nvim_set_hl(0, '@lsp.type.class.cpp', { fg='#a7c080' })
            vim.api.nvim_set_hl(0, '@lsp.type.type.c', { fg='#abbceb' })
            vim.api.nvim_set_hl(0, '@lsp.type.class.c', { fg='#a7c080' })
            vim.api.nvim_set_hl(0, '@lsp.type.function.c', { fg='#73c0ec' })
            vim.api.nvim_set_hl(0, 'ModeMsg', { fg='#a6c080' })
        end
        
        if (vim.g.colors_name == 'vague') then
            vim.api.nvim_set_hl(0, '@lsp.type.namespace.odin', { fg='#e6788c' })
        end

        if (vim.g.colors_name == 'vscode') then
            vim.api.nvim_set_hl(0, 'FlutterWidgetGuides', { fg='#515151' })
        end

        if (vim.g.colors_name == 'tokyonight-night') then
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { sp='#db4b4b', underline = true })
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { sp='#1abc9c', underline = true })
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { sp='#0db9d7', underline = true })
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { sp='#e0af68', underline = true })
        end

        if (vim.g.colors_name == 'tokyonight-moon') then
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { sp='#c53b53', underline = true })
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { sp='#4fd6be', underline = true })
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { sp='#0db9d7', underline = true })
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { sp='#ffc777', underline = true })
        end

        if (vim.g.colors_name == 'duskfox') then
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineError', { sp='#eb6f92', underline = true })
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineHint', { sp='#a3be8c', underline = true })
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineInfo', { sp='#569fba', underline = true })
            vim.api.nvim_set_hl(0, 'DiagnosticUnderlineWarn', { sp='#f6c177', underline = true })
        end
    end
})

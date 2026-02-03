local fzf = require('fzf-lua')
local actions = require('fzf-lua').actions

local augroup = vim.api.nvim_create_augroup('ColorSchemeHooks', { clear = true })
vim.api.nvim_create_autocmd('ColorScheme', {
    group = augroup,
    pattern = '*',
    callback = function()
        if (vim.g.colors_name == 'tokyonight-night') then
            vim.api.nvim_set_hl(0, "FzfLuaFzfCursorLine", { bg = '#0c0c11' })
        end
    end,
})

require("fzf-lua").setup(
    {
        grep = {
            actions = {
                ["ctrl-q"] = {
                    fn = actions.file_edit_or_qf, prefix = 'select-all+'
                },
            },
        },
        fzf_colors = true,
        defaults = { file_icons = false },
        -- git_icons = false,
        -- color_icons = false,
        lsp = {
            symbols = {
                symbol_style = 3,

                --[=[
                NOTE: to completely hide symbol info:
                https://github.com/ibhagwan/fzf-lua/issues/1098

                fzf-lua/lua/fzf-lua/providers/lsp.lua

                Lines 687 to 688 in 1df84a4
                -- can get here when only 'opts.symbol_fmt' was set 
                M._sym2style[kind] = kind 

                ```lua
                symbol_style = false,
                -- this goes under `lsp.symbols`
                symbol_fmt = function(s, opts) return "[" .. s .. "]" end,
                ```
                --]=]
            },
        },
    }
)

vim.keymap.set('n', '<space>ff', fzf.files, {})
vim.keymap.set('n', '<space>fg', fzf.live_grep, {})
vim.keymap.set('n', '<space>fb', fzf.buffers, {})
vim.keymap.set('n', '<space>ft', fzf.tabs, {})
vim.keymap.set('n', '<space>ts', fzf.treesitter, {})
vim.keymap.set('n', '<space>ws', fzf.lsp_live_workspace_symbols, {})
vim.keymap.set('n', '<space>ds', fzf.lsp_document_symbols, {})
vim.keymap.set('n', '<space>hlg', ":lua require(\"fzf-lua\").highlights({ fzf_colors = true })<cr>", {})

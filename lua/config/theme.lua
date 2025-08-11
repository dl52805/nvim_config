vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function ()
        if (vim.g.colors_name == 'poimandres') then
            vim.api.nvim_set_hl(0, 'ColorColumn', { bg = '#161922' })
            vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#252b3a' })
        end

        if (vim.g.colors_name == 'vague') then
            vim.api.nvim_set_hl(0, 'WinSeparator', { fg = '#444447' })
        end

        if (vim.g.colors_name == 'monet') then
            vim.api.nvim_set_hl(0, 'CursorColumn', { fg = '#393E52' })
        end

        if (vim.g.colors_name == 'tokyonight-night') then
            vim.api.nvim_set_hl(0, 'BlinkCmpKind', { fg = '#c0caf5' })
            vim.api.nvim_set_hl(0, 'BlinkCmpSource', { fg = '#c0caf5' })
            vim.api.nvim_set_hl(0, 'BlinkCmpLabelDetail', { fg = '#c0caf5' })
            vim.api.nvim_set_hl(0, 'BlinkCmpKindFile', { fg = '#c0caf5' })
            vim.api.nvim_set_hl(0, 'BlinkCmpLabelDescription', { fg = '#c0caf5' })
        end

        if (vim.g.colors_name == 'tokyonight-moon') then
            vim.api.nvim_set_hl(0, 'BlinkCmpKind', { fg = '#c8d3f5' })
            vim.api.nvim_set_hl(0, 'BlinkCmpSource', { fg = '#c8d3f5' })
            vim.api.nvim_set_hl(0, 'BlinkCmpLabelDetail', { fg = '#c8d3f5' })
            vim.api.nvim_set_hl(0, 'BlinkCmpKindFile', { fg = '#c8d3f5' })
            vim.api.nvim_set_hl(0, 'BlinkCmpLabelDescription', { fg = '#c8d3f5' })
        end

        if (vim.g.colors_name == 'nordic') then
            vim.api.nvim_set_hl(0, 'Pmenu', { fg = '#c0c8d8' })
        end

        if (vim.g.colors_name == 'duskfox') then
            vim.api.nvim_set_hl(0, 'Pmenu', { fg = '#e0def4' })
        end
    end
})

vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function ()
        if (vim.g.colors_name == 'vscode') then
            vim.api.nvim_set_hl(0, 'BufferLineIndicatorSelected', { bg='#1f1f1f' })
        end

        if (vim.g.colors_name == 'tokyonight-night') then
            vim.api.nvim_set_hl(0, 'BufferLineIndicatorSelected', { bg='#1a1b27' })
        end

        if (vim.g.colors_name == 'tokyonight-moon') then
            vim.api.nvim_set_hl(0, 'BufferLineIndicatorSelected', { bg='#222437' })
        end

        if (vim.g.colors_name == 'hybrid') then
            vim.api.nvim_set_hl(0, 'BufferLineIndicatorSelected', { bg='#1d1f21' })
        end
    end
})

vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function ()
        if (vim.g.colors_name == 'hybrid') then
            vim.api.nvim_set_hl(0, 'RainbowDelimiterRed', { fg='#db5e63' })
        end
    end
})

-- vim.cmd[[colorscheme hybrid]]
vim.cmd[[colorscheme tokyonight-moon]]

vim.keymap.set('n', '<space>rt', ":colorscheme tokyonight-moon<cr>", {})

--[[
vim.cmd[[
    set cursorline
    set cursorcolumn
]]
--]]

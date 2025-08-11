local poimandres_palette = {
    yellow = '#FFFAC2',
    teal1 = '#5DE4C7',
    teal2 = '#5FB3A1',
    teal3 = '#42675A',
    blue1 = '#89DDFF',
    blue2 = '#ADD7FF',
    blue3 = '#91B4D5',
    blue4 = '#7390AA',
    pink1 = '#FAE4FC',
    pink2 = '#FCC5E9',
    pink3 = '#D0679D',
    blueGray1 = '#A6ACCD',
    blueGray2 = '#767C9D',
    blueGray3 = '#506477',
    background1 = '#303340',
    background2 = '#1B1E28',
    background3 = '#171922',
    text = '#E4F0FB',
    white = '#FFFFFF',
    none = 'NONE',
}

vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function ()
        if (vim.g.colors_name == 'poimandres') then
            vim.api.nvim_set_hl(0, 'RainbowDelimiterRed',    { fg=poimandres_palette.pink3 })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterYellow', { fg=poimandres_palette.yellow })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterBlue',   { fg=poimandres_palette.blue1 })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterOrange', { fg="#eda159" })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterGreen',  { fg=poimandres_palette.teal1 })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterViolet', { fg='#d2a7ff' })
            vim.api.nvim_set_hl(0, 'RainbowDelimiterCyan',   { fg=poimandres_palette.blue3 })
            vim.api.nvim_set_hl(0, 'SnacksIndent',           { fg=poimandres_palette.background1 })
        end
    end
})

vim.api.nvim_create_autocmd('ColorScheme', {
    callback = function ()
        if (vim.g.colors_name == 'tokyonight-night') then
            vim.api.nvim_set_hl(0, 'BlinkPairsRed',    { fg="#f7768e" })
            vim.api.nvim_set_hl(0, 'BlinkPairsOrange', { fg="#ff9e64" })
            vim.api.nvim_set_hl(0, 'BlinkPairsYellow', { fg="#e0af68" })
            vim.api.nvim_set_hl(0, 'BlinkPairsGreen',  { fg="#9ece6a" })
            vim.api.nvim_set_hl(0, 'BlinkPairsBlue',   { fg="#7aa2f7" })
            vim.api.nvim_set_hl(0, 'BlinkPairsViolet', { fg="#9d7cd8" })
            vim.api.nvim_set_hl(0, 'BlinkPairsCyan',   { fg="#7dcfff" })
        end

        if (vim.g.colors_name == 'tokyonight-moon') then
            vim.api.nvim_set_hl(0, 'BlinkPairsRed',    { fg = "#ff757f" })
            vim.api.nvim_set_hl(0, 'BlinkPairsOrange', { fg = "#ff966c" })
            vim.api.nvim_set_hl(0, 'BlinkPairsYellow', { fg = "#ffc777" })
            vim.api.nvim_set_hl(0, 'BlinkPairsGreen',  { fg = "#c3e88d" })
            vim.api.nvim_set_hl(0, 'BlinkPairsBlue',   { fg = "#82aaff" })
            vim.api.nvim_set_hl(0, 'BlinkPairsViolet', { fg = "#fca7ea" })
            vim.api.nvim_set_hl(0, 'BlinkPairsCyan',   { fg = "#86e1fc" })
        end
    end
})

--[[
vim.api.nvim_create_autocmd("WinScrolled", {
    callback = function()
        if (require("rainbow-delimiters").is_enabled(0) == true) then
            vim.schedule(function()
                require("rainbow-delimiters").enable(0)
            end)
        end
    end,
})
--]]

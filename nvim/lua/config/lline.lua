require('lualine').setup {
    options = {
        icons_enabled = false,
        theme = 'auto',
        component_separators = { left = ' ', right = ' '  },
        section_separators = { left = ' ', right = ' '  },
        disabled_filetypes = {},
        always_divide_middle = true,
    },
    sections = {
        lualine_a = {'mode'},
        lualine_b = {'filename'},
        lualine_c = {},
        lualine_x = {'filetype'},
        lualine_y = {'progress'},
        lualine_z = {'location'}
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = {'filename'},
        lualine_x = {'location'},
        lualine_y = {},
        lualine_z = {}
    },
    tabline = {},
    extensions = {}
}

--[[
vim.g.material_style = 'deep ocean'
local lline_ocean = require'lualine.themes.material-nvim'

lline_ocean.normal.a.bg = '#7dcfff'
lline_ocean.normal.b.fg = '#a6accd'

lline_ocean.insert.b.fg   = '#a6accd'
lline_ocean.visual.b.fg   = '#a6accd'
lline_ocean.replace.b.fg  = '#a6accd'
lline_ocean.command.b.fg  = '#a6accd'
lline_ocean.inactive.b.fg = '#a6accd'

if (vim.g.colors_name == 'material' and vim.g.material_style == 'deep ocean') then
    require('lualine').setup {
        options = {
            icons_enabled = false,
            theme = lline_ocean,
            component_separators = { left = ' ', right = ' '  },
            section_separators = { left = ' ', right = ' '  },
            disabled_filetypes = {},
            always_divide_middle = true,
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'filename'},
            lualine_c = {},
            lualine_x = {'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        extensions = {}
    }
else
    require('lualine').setup {
        options = {
            icons_enabled = false,
            theme = 'auto',
            component_separators = { left = ' ', right = ' '  },
            section_separators = { left = ' ', right = ' '  },
            disabled_filetypes = {},
            always_divide_middle = true,
        },
        sections = {
            lualine_a = {'mode'},
            lualine_b = {'filename'},
            lualine_c = {},
            lualine_x = {'filetype'},
            lualine_y = {'progress'},
            lualine_z = {'location'}
        },
        inactive_sections = {
            lualine_a = {},
            lualine_b = {},
            lualine_c = {'filename'},
            lualine_x = {'location'},
            lualine_y = {},
            lualine_z = {}
        },
        tabline = {},
        extensions = {}
    }
end

function theme_ch(name)
    vim.cmd("colorscheme " .. name)

    if (vim.g.colors_name == 'material' and vim.g.material_style == 'deep ocean') then
        vim.api.nvim_set_hl(0, "Cursor", { bg='#a6accd', fg='#0f111a' })
        vim.api.nvim_set_hl(0, "TabLineSel", { bg='#7dcfff', fg='#0f111a' })
    end

    if (vim.g.colors_name == 'material' and vim.g.material_style == 'deep ocean') then
        require('lualine').setup {
            options = {
                icons_enabled = false,
                theme = lline_ocean,
                component_separators = { left = ' ', right = ' '  },
                section_separators = { left = ' ', right = ' '  },
                disabled_filetypes = {},
                always_divide_middle = true,
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'filename'},
                lualine_c = {},
                lualine_x = {'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            extensions = {}
        }
    else
        require('lualine').setup {
            options = {
                icons_enabled = false,
                theme = 'auto',
                component_separators = { left = ' ', right = ' '  },
                section_separators = { left = ' ', right = ' '  },
                disabled_filetypes = {},
                always_divide_middle = true,
            },
            sections = {
                lualine_a = {'mode'},
                lualine_b = {'filename'},
                lualine_c = {},
                lualine_x = {'filetype'},
                lualine_y = {'progress'},
                lualine_z = {'location'}
            },
            inactive_sections = {
                lualine_a = {},
                lualine_b = {},
                lualine_c = {'filename'},
                lualine_x = {'location'},
                lualine_y = {},
                lualine_z = {}
            },
            tabline = {},
            extensions = {}
        }
    end
    
    if (vim.g.colors_name == 'rose-pine') then
        vim.api.nvim_set_hl(0, "Cursor", { bg='#524f67', fg='#e0def4' })
        vim.api.nvim_set_hl(0, "MatchParen", { underline = false, fg='#f6c177' })
    end
end
--]]


return {
    {
        "HoNamDuong/hybrid.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
            require('onedark').setup {
                style = 'dark'
            }
        end,
    },
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
        "bluz71/vim-moonfly-colors",
        lazy = false,
        priority = 1000,
        config = function()
        end,
    },
    {
        "bluz71/vim-nightfly-colors",
        lazy = false,
        priority = 1000,
        config = function()
        end,
    },
    {
        "sam4llis/nvim-tundra",
    },
    --[[
    {
        "Shatur/neovim-ayu",
        priority = 1000,
    },
    {
        "oxfist/night-owl.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "JoosepAlviste/palenightfall.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "pauchiner/pastelnight.nvim",
        lazy = false,
        priority = 1000,
        opts = {},
    },
    {
        "forest-nvim/sequoia.nvim",
        lazy = false,
        priority = 1000,
        config = function()
        end,
    },
    --]]
}

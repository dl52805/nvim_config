return {
    {
    	'xeluxee/competitest.nvim',
    	dependencies = 'MunifTanjim/nui.nvim',
    	config = function()
            require('competitest').setup()
        end,
    },
    {
        "kawre/leetcode.nvim",
        build = ":TSUpdate html",
        dependencies = {
            "nvim-treesitter/nvim-treesitter",
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim",
            "MunifTanjim/nui.nvim",
        },
        opts = {
            lang = "cpp",
            picker = { provider = "telescope" },
            --[[
            storage = {
                home = "/Users/danluo/comp/leetcode/nvim/home",
                cache = "/Users/danluo/comp/leetcode/nvim/cache",
            },
            --]]
        },
    },
}

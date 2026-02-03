return {
    {
        "scottmckendry/telescope-resession.nvim",
    },
    {
        'stevearc/resession.nvim',
        opts = {},
        init = function()
            local resession = require("resession")
            resession.setup()

            vim.keymap.set("n", "\\ss", resession.save)
            vim.keymap.set("n", "\\sl", resession.load)
            vim.keymap.set("n", "\\sd", resession.delete)
        end,
    },
}
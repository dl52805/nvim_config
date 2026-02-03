return {
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio"
        },
        keys = {
            {
                "\\de",
                function() require("dapui").open() end,
                desc = "Open Dap UI",
            },
            {
                "\\dq",
                function() require("dapui").close() end,
                desc = "Close Dap UI",
            },
            {
                "\\dw",
                function() require("dapui").toggle() end,
                desc = "Toggle Dap UI",
            },
            {
                "\\dr",
                function() require("dapui").eval() end,
                mode = { "v" },
                desc = "Dap UI Eval"
            },
            {
                "\\dc",
                function() require("dap").continue() end,
                desc = "Dap Continue"
            },
            {
                "\\dtb",
                function() require("dap").toggle_breakpoint() end,
                desc = "Dap Toggle Breakpoint"
            },
            {
                "\\<F1>",
                function() require("dap").step_over() end,
                desc = "Dap Step Over"
            },
            {
                "\\<F2>",
                function() require("dap").step_into() end,
                desc = "Dap Step Into"
            },
            {
                "\\<F3>",
                function() require("dap").step_out() end,
                desc = "Dap Step Into"
            },
        },
        init = function()
            require("dapui").setup()
        end,
    }
}

return {
	{
        "wojciech-kulik/xcodebuild.nvim",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "MunifTanjim/nui.nvim",
        },
        cond = function() return jit.os == "OSX" end,
        config = function()
            require("xcodebuild").setup({
            })
        end,
    },
}
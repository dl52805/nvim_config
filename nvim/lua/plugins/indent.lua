return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	init = function()
		require("ibl").setup({
			indent = {
				char = "│",
			},
			scope = {
				enabled = false,
				show_start = false,
				show_end = false,
			},
		})
	end,
}

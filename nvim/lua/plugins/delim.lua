return {
	--[[
	{
		"HiPhish/rainbow-delimiters.nvim",
	},
	--]]
	{
		"Saghen/blink.pairs",
		version = '*',
		dependencies = 'saghen/blink.download',
		opts = {
			highlights = {
				-- enabled = true,
				enabled = false,
				groups = {
					"BlinkPairsRed",   
					"BlinkPairsOrange",
					"BlinkPairsYellow",
					"BlinkPairsGreen", 
					"BlinkPairsBlue",  
					"BlinkPairsViolet",
					"BlinkPairsCyan",  
				},
				matchparen = {
					enabled = true,
					group = 'MatchParen',
				},
			},
		},
	},
}

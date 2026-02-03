--[[
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("TSContextDisable")
		vim.cmd("call rainbow_delimiters#toggle(0)")
	end,
})
--]]

-- vim.api.nvim_set_keymap('n', '<space>rb', "<cmd>call rainbow_delimiters#toggle(0)<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>tcx', "<cmd>TSContextToggle<cr>", { noremap = true, silent = true })

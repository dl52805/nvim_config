local bufnr = vim.api.nvim_get_current_buf()

vim.keymap.set('n', '<space>ra', function()
	vim.cmd.RustLsp('codeAction')
end, { silent = true, buffer = bufnr })

vim.keymap.set('n', '<space>ml', function()
	vim.cmd.RustLsp('expandMacro')
end, { silent = true, buffer = bufnr })

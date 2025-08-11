vim.lsp.enable('sourcekit')

vim.filetype.add({
	extension = {
		metal = "metal",
	}
})

vim.treesitter.language.register('cpp', { 'metal' })
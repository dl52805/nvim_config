vim.api.nvim_set_keymap(
	'n',
	'<space>tcx',
	"<cmd>TSContextToggle<cr>",
	{
		noremap = true,
		silent = true
	}
)

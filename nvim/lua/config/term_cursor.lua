cursor_callback = function(ev)
	vim.opt.guicursor = "n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:hor15-TermCursor"
end

vim.api.nvim_create_autocmd({
	'TabEnter',
	'TabLeave',
	'TabNew',
	'TabNewEntered',
	'TabClosed',
	'TermOpen',
	'TermClose',
	'BufAdd',
	'BufDelete',
	'BufEnter',
	'BufLeave',
	'BufNew',
	'WinNew',
	'WinLeave',
	'WinScrolled',
}, {
    callback = cursor_callback
})

vim.api.nvim_set_keymap(
	"n",
	"<space>crw",
	":lua vim.opt.guicursor = \"n-v-c-sm:block,i-ci-ve:ver25,r-cr-o:hor20,t:hor15-TermCursor\"<cr>",
	{}
)

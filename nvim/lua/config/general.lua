local set = vim.opt
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

set.number = true
set.filetype = "off"

set.tabstop = 4
set.shiftwidth = 4
set.expandtab = true

keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

keymap("n", "<space>kk", ":tabnext<CR>", opts)
keymap("n", "<space>jj", ":tabprevious<CR>", opts)

set.termguicolors = true

vim.o.exrc = true

vim.opt.fillchars = { eob = " " }

vim.cmd[[
	let g:c_syntax_for_h = 1
]]

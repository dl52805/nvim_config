local builtin = require('telescope.builtin')

require('telescope').load_extension 'telescope-tabs'
require('telescope').setup({
	extensions = {
        resession = {
            prompt_title = "Find Sessions", -- telescope prompt title
            dir = "session", -- directory where resession stores sessions
        },
    },
})

require('telescope-tabs').setup({})

vim.keymap.set('n', '\\ff', builtin.find_files, {})
vim.keymap.set('n', '\\fg', builtin.live_grep, {})
vim.keymap.set('n', '\\fb', builtin.buffers, {})
vim.keymap.set('n', '\\ft', builtin.treesitter, {})
vim.keymap.set('n', '\\fh', builtin.help_tags, {})
vim.keymap.set('n', '\\]]', builtin.lsp_dynamic_workspace_symbols, {})
vim.keymap.set('n', '\\xx', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '\\ww', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '\\rs', ":Telescope resession<cr>", {})
vim.keymap.set('n', '\\ll', require('telescope-tabs').list_tabs, {})

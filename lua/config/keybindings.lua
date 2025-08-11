vim.api.nvim_set_keymap("n", "\\5", ":e $MYVIMRC | cd %:p:h<cr>", {})
vim.api.nvim_set_keymap("n", "\\6", ":e $MYVIMRC | tcd %:p:h<cr>", {})

vim.api.nvim_set_keymap("n", "\\z", ":lua print(os.getenv(\"XDG_CONFIG_HOME\"))<cr>", {})

vim.api.nvim_set_keymap("n", "<space>fr", ":FlutterReload<cr>", {})

vim.keymap.set('i', '<D-v>', '<C-r>+')

vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { noremap = true })

vim.api.nvim_create_autocmd('LspAttach', {
    group = vim.api.nvim_create_augroup('UserLspConfig', {}),
    callback = function(ev)
        local opts = { buffer = ev.buf }
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
        vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
        vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
        vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)
        vim.keymap.set('n', '<space>wa', vim.lsp.buf.add_workspace_folder, opts)
        vim.keymap.set('n', '<space>wr', vim.lsp.buf.remove_workspace_folder, opts)

        vim.keymap.set('n', '<space>wl', function()
            print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
        end, opts)

        vim.keymap.set('n', '<space>D', vim.lsp.buf.type_definition, opts)
        vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, opts)
        vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, opts)
        vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

        vim.keymap.set('n', '<space>dh', vim.diagnostic.open_float, opts)

        vim.api.nvim_set_keymap("n", "<space>df", ":Format<cr>", {})

        --[[
        vim.keymap.set('n', '<space>f', function()
            vim.lsp.buf.format { async = true }
        end, opts)
        --]]
    end
})

vim.api.nvim_set_keymap('n', '<space>cr', "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>cq', "<cmd>CompilerStop<cr>" .. "<cmd>CompilerRedo<cr>", 
    { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<space>ct', "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })

vim.api.nvim_set_keymap('n', '<space>qw', "<cmd>SidebarNvimToggle<cr>", { noremap = true, silent = true })

local size_toggle = false;

function toggle_font_size()
    size_toggle = not size_toggle

    if size_toggle then
        if vim.g.neovide then vim.o.guifont = "GeistMono Nerd Font:h19" end
    else
        if vim.g.neovide then vim.o.guifont = "GeistMono Nerd Font:h15.4" end
    end
end

vim.api.nvim_set_keymap("n", "<space>tf", ":lua toggle_font_size()<cr>", {})


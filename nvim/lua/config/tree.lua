--[==[
require'nvim-treesitter'.setup {
    --[[
	ensure_installed = {
		"lua", "vim", "vimdoc", "query",
		"c", "cpp", "objc", "odin", "zig", "rust", "d",
		"glsl", "hlsl", "disassembly", "nasm", "asm",
		"toml", "dart", "yaml", "python", "go", "java",
		"markdown", "latex", "typst", "ocaml", "make", "bash"
	},
	--]]
	highlight = {
		enable = true,
	},
	incremental_selection = {
		enable = true,
	},
	indent = {
		enable = true,
	}
}
--]==]

vim.api.nvim_create_autocmd('FileType', {
    pattern = {
        "lua", "vim", "vimdoc", "query",
    	"c", "cpp", "objc", "odin", "zig", "rust", "d",
    	"glsl", "hlsl", "disassembly", -- "nasm", "asm",
    	"toml", "dart", "yaml", "python", "go", "java",
    	"markdown", "latex", "typst", "ocaml", "make", "bash",
    	"svelte", "html", "typescript", "javascript", "css"
    },
    callback = function() vim.treesitter.start() end,
})

--[[
vim.api.nvim_create_autocmd("FileType", {
	pattern = vim.treesitter.language.get_filetypes(lang),
	callback = function()
		if vim.treesitter.query.get(lang, "highlights") then
			vim.treesitter.start()
		end
	end,
})
--]]

require'nvim-treesitter'.install({
    "lua", "vim", "vimdoc", "query",
	"c", "cpp", "objc", "odin", "zig", "rust", "d",
	"glsl", "hlsl", "disassembly", -- "nasm", "asm",
	"toml", "dart", "yaml", "python", "go", "java",
	"markdown", "latex", "typst", "ocaml", "make", "bash",
	"svelte", "html", "typescript", "javascript", "css"
})

--[[
vim.api.nvim_create_autocmd('User', {
    pattern = 'TSUpdate',
    callback = function()
        require('nvim-treesitter.parsers').gas = {
            install_info = {
                path = '~/treesitter/gnu_x86/tree-sitter-gas',
            },
        }
    end}
)
--]]

--[[
vim.treesitter.language.register('gas', { 'asm' })
--]]

require'treesitter-context'.setup({
    enable = false,
})

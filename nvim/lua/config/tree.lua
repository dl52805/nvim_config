vim.api.nvim_create_autocmd('FileType', {
	pattern = {
		"lua", "vim", "vimdoc", "query",
		"c", "cpp", "objc", "odin", "zig", "rust", "d",
		"glsl", "hlsl", "disassembly", "nasm", "asm",
		"toml", "dart", "yaml", "python", "go", "java",
		"markdown", "latex", "typst", "ocaml", "make", "bash",
		"svelte", "html", "typescript", "javascript", "css"
	},
	callback = function() vim.treesitter.start() end,
})

require'nvim-treesitter'.install({
	"lua", "vim", "vimdoc", "query",
	"c", "cpp", "objc", "odin", "zig", "rust", "d",
	"glsl", "hlsl", "disassembly", "nasm", "asm",
	"toml", "dart", "yaml", "python", "go", "java",
	"markdown", "latex", "typst", "ocaml", "make", "bash",
	"svelte", "html", "typescript", "javascript", "css"
})

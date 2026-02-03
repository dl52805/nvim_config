require("luasnip.loaders.from_vscode").lazy_load({ paths = { "./snippets" } })

local ls = require("luasnip")

vim.keymap.set({"i", "s"}, "<C-0>", function() ls.jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<C-9>", function() ls.jump(-1) end, {silent = true})

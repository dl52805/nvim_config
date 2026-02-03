require("mason").setup({
    ui = {
        icons = {
            package_installed = " ",
            package_pending = " ",
            package_uninstalled = " ",
        }
    },
})

require("mason-lspconfig").setup {
    ensure_installed = {
        --[[
        "gopls",
        "clangd",
        "jdtls",
        "glsl_analyzer",
        "basedpyright",
        "ols",
        "rust_analyzer",
        "zls",
        "nim_langserver",
        "csharp_ls",
        "tinymist",

        "vtsls",
        "biome",
        "emmet_ls",
        "svelte",
        --]]
    },
}

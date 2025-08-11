if vim.g.neovide then
    if vim.loop.os_uname().sysname == "Darwin" then
        -- vim.o.guifont = "0xProto Nerd Font:h14.5:w0.1"
        -- vim.opt.linespace = 15
        vim.o.guifont = "MonoLisa Nerd Font:h14.5:w0.0"
        vim.opt.linespace = 8
    else
        vim.opt.linespace = 8
    end
    -- vim.g.neovide_scroll_animation_length = 0.08
    -- vim.g.neovide_cursor_animation_length = 0.02
    vim.g.neovide_padding_top = 20
    vim.g.neovide_padding_bottom = 2
    vim.g.neovide_padding_left = 20
    vim.g.neovide_padding_right = 20
    vim.g.neovide_show_border = true
    -- vim.g.neovide_cursor_trail_size = 0.35
    -- vim.g.neovide_cursor_animate_command_line = false
    vim.g.neovide_underline_stroke_scale = 1.8
end

function select_font(font_name)
    if vim.loop.os_uname().sysname == "Darwin" then

        if not vim.g.neovide then
            print("[ERROR] client is not neovide")
        end

        if font_name == "monolisa" then
            vim.o.guifont = "MonoLisa Nerd Font:h14.5:w0.0"
            vim.opt.linespace = 8
        elseif font_name == "monolisa_large" then
            vim.o.guifont = "MonoLisa Nerd Font:h16.2:w0.1"
            vim.opt.linespace = 9
        elseif font_name == "geist" then
            vim.o.guifont = "GeistMono Nerd Font:h15:w0.6"
            vim.opt.linespace = 12
        elseif font_name == "commit" then
            vim.o.guifont = "CommitMono Nerd Font:h15.5:w0.4"
            vim.opt.linespace = 14
        elseif font_name == "oxygen" then
            vim.o.guifont = "OxygenMono Nerd Font:h14.4:w0.0"
            vim.opt.linespace = 10
        elseif font_name == "borg" then
            vim.o.guifont = "BorgSansM Nerd Font:h15:w0.3"
            vim.opt.linespace = 14
        elseif font_name == "jetbrains" then
            vim.o.guifont = "JetBrainsMono Nerd Font:h15.6:w0.0"
            vim.opt.linespace = 12
        elseif font_name == "ibm" then
            vim.o.guifont = "BlexMono Nerd Font:h15.4:w0.0"
            vim.opt.linespace = 8
        elseif font_name == "hasklig" then
            vim.o.guifont = "Hasklug Nerd Font:h15:w0.1"
            vim.opt.linespace = 11
        elseif font_name == "0xproto" then
            vim.o.guifont = "0xProto Nerd Font:h14.5:w0.1"
            vim.opt.linespace = 15
        else
            print("[ERROR] provided font name not defined")
        end

    end
end

vim.api.nvim_create_autocmd("BufLeave", {
    callback = function()
        vim.g.neovide_scroll_animation_length = 0
        vim.g.neovide_cursor_animation_length = 0
    end,
})

vim.api.nvim_create_autocmd("BufEnter", {
    callback = function()
        vim.fn.timer_start(70, function()
            vim.g.neovide_scroll_animation_length = 0.3
            vim.g.neovide_cursor_animation_length = 0.08
        end)
    end,
})

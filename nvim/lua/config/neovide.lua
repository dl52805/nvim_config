if vim.g.neovide then
  if vim.loop.os_uname().sysname == "Darwin" then
    vim.o.guifont = "MonoLisaLean Nerd Font:h12.5:w-0.2"
    vim.opt.linespace = 6
  else
    vim.opt.linespace = 8
  end
  vim.g.neovide_padding_top = 20
  vim.g.neovide_padding_bottom = 2
  vim.g.neovide_padding_left = 20
  vim.g.neovide_padding_right = 20
  vim.g.neovide_show_border = true
  vim.g.neovide_underline_stroke_scale = 1.8
end

function select_font(font_name)
  if vim.loop.os_uname().sysname == "Darwin" then

    if not vim.g.neovide then
      print("[ERROR] client is not neovide")
    end

    if font_name == "monolisa" then
      vim.o.guifont = "MonoLisaLean Nerd Font:h12.5:w-0.2"
      vim.opt.linespace = 6
    elseif font_name == "geist" then
      vim.o.guifont = "GeistMono Nerd Font:h13:w0.1"
      vim.opt.linespace = 9
    elseif font_name == "ibm" then
      vim.o.guifont = "BlexMono Nerd Font:h13:w0.0"
      vim.opt.linespace = 7
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

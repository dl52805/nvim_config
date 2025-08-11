require("bufferline").setup{
    options = {
        mode = "tabs",
        numbers = "none",
        close_icon = ' ',
        -- modified_icon = '+',
        left_trunc_marker = '<',
        right_trunc_marker = '>',
        show_duplicate_prefix = false,
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        name_formatter = function(buf)
            return " " .. tostring(vim.api.nvim_tabpage_get_number(buf.tabnr))
        end,
        tab_size = 4,
        indicator = { style = 'none' },
        buffer_close_icon = '',
        modified_icon = '',
        buffer_close_icon = '',
    }
}

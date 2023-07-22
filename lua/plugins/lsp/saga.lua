local keymap = vim.keymap.set
local saga = require('lspsaga')

saga.setup({
  border_style = "single",
  saga_winblend = 0,
  move_in_saga = { prev = '<C-p>', next = '<C-n>' },
  diagnostic_header = { " ", " ", " ", "ﴞ " },
  preview_lines_above = 0,
  max_preview_lines = 10,
  code_action_icon = "",
  code_action_num_shortcut = true,
  code_action_lightbulb = {
    enable = true,
    enable_in_insert = true,
    cache_code_action = true,
    sign = true,
    update_time = 150,
    sign_priority = 20,
    virtual_text = true,
  },
  finder_request_timeout = 1500,
  finder_action_keys = {
    open = { 'o', '<CR>' },
    vsplit = 'i',
    split = 's',
    tabe = 't',
    quit = { 'q', '<ESC>' },
  },
  rename_action_quit = '<Esc>',
  rename_in_select = true,
  custom_kind = {},
  server_filetype_map = {},
})


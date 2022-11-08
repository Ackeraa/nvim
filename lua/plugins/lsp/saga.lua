local keymap = vim.keymap.set
local saga = require('lspsaga')

saga.init_lsp_saga({
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

-- winbar
local function get_file_name(include_path)
  local file_name = require('lspsaga.symbolwinbar').get_file_name()
  if vim.fn.bufname '%' == '' then return '' end
  if include_path == false then return file_name end
  local sep = vim.loop.os_uname().sysname == 'Windows' and '\\' or '/'
  local path_list = vim.split(string.gsub(vim.fn.expand '%:~:.:h', '%%', ''), sep)
  local file_path = ''
  for _, cur in ipairs(path_list) do
    file_path = (cur == '.' or cur == '~') and '' or
        file_path .. cur .. ' ' .. '%#LspSagaWinbarSep#>%*' .. ' %*'
  end
  return file_path .. file_name
end

local function config_winbar_or_statusline()
  local exclude = {
    ['terminal'] = true,
    ['toggleterm'] = true,
    ['prompt'] = true,
    ['NvimTree'] = true,
    ['help'] = true,
  } -- Ignore float windows and exclude filetype
  if vim.api.nvim_win_get_config(0).zindex or exclude[vim.bo.filetype] then
    vim.wo.winbar = ''
  else
    local ok, lspsaga = pcall(require, 'lspsaga.symbolwinbar')
    local sym
    if ok then sym = lspsaga.get_symbol_node() end
    local win_val = ''
    win_val = get_file_name(true)
    if sym ~= nil then win_val = win_val .. sym end
    vim.wo.winbar = win_val
    --vim.wo.stl = win_val
  end
end

local events = { 'BufEnter', 'BufWinEnter', 'CursorMoved' }

vim.api.nvim_create_autocmd(events, {
  pattern = '*',
  callback = function() config_winbar_or_statusline() end,
})

vim.api.nvim_create_autocmd('User', {
  pattern = 'LspsagaUpdateSymbol',
  callback = function() config_winbar_or_statusline() end,
})

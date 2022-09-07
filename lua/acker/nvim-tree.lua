-- following options are the default
-- each of these are documented in `:help nvim-tree.OPTION_NAME`
--vim.g.
local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
    return
end

local config_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not config_status_ok then
    return
end


local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  sync_install = false,
  auto_install = true,
  ensure_installed = { "cpp", "lua", "python" },
  ignore_install = { "" },
  autopairs = {
    enable = false,
  },
  highlight = {
    enable = true,
    disable = { "lua" },
    additional_vim_regex_highlighting = true,
    indent = { enable = true, disable = { "yaml" } },
    context_commentstring = {
      enable = true,
      enable_autocmd = false,
    },
  },
}

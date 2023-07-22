local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
  return
end

local lspconfig = require("lspconfig")

local servers = {
  "pyright",
  "clangd",
  "tsserver"
}

lsp_installer.setup {
  ensure_installed = servers
}

local signs = {
  { name = "DiagnosticSignError", text = "" },
  { name = "DiagnosticSignWarn", text = "" },
  { name = "DiagnosticSignHint", text = "" },
  { name = "DiagnosticSignInfo", text = "" },
}

for _, sign in ipairs(signs) do
  vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
end

local config = {
  virtual_text = false,
  signs = {
    active = signs,
  },
  update_in_insert = false,
  underline = true,
  severity_sort = true,
  float = {
    focusable = false,
    style = "minimal",
    border = "rounded",
    source = "always",
    header = "",
    prefix = "",
  },
}

vim.diagnostic.config(config)

for _, server in pairs(servers) do

  local opts = {}
  local capabilities = vim.lsp.protocol.make_client_capabilities()
  capabilities.offsetEncoding = { "utf-16" }

  local status_ok1, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
  if not status_ok1 then
    return
  end

  opts.capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

  local has_custom_opts, server_custom_opts = pcall(require, "plugins.lsp.settings." .. server)

  if has_custom_opts then
    opts = vim.tbl_deep_extend("force", server_custom_opts, opts)
  end
  lspconfig[server].setup(opts)
  lspconfig.clangd.setup({ capabilities = capabilities })
end

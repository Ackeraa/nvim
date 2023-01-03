local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install plugins here
return packer.startup(function(use)
  use "JoosepAlviste/nvim-ts-context-commentstring"
  use "Pocco81/auto-save.nvim"
  use "ahmedkhalf/project.nvim"
  use "akinsho/toggleterm.nvim"
  use "github/copilot.vim"
  use "goolord/alpha-nvim"
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/nvim-cmp" -- fhe completion plugin
  use "kyazdani42/nvim-tree.lua"
  use "kyazdani42/nvim-web-devicons"
  use "lewis6991/gitsigns.nvim"
  use "lewis6991/impatient.nvim"
  --use "lukas-reineke/indent-blankline.nvim"
  use "moll/vim-bbye" -- delete buffer
  use "navarasu/onedark.nvim" -- colorschemes
  use "neovim/nvim-lspconfig" -- enable LSP
  use "nvim-lua/plenary.nvim" -- useful lua functions used ny lots of plugins
  use "nvim-lua/popup.nvim" -- an implementation of the Popup API from vim in Neovim
  use "nvim-lualine/lualine.nvim"
  use "nvim-telescope/telescope.nvim"
  use "wbthomason/packer.nvim" -- have packer manage itself
  use "williamboman/nvim-lsp-installer" -- simple to use language server installer
  use "ethanholz/nvim-lastplace"
  use { "nvim-treesitter/nvim-treesitter", run = ":TSUpdate", }
  use { "akinsho/bufferline.nvim", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons" }
  --use { "tzachar/cmp-tabnine", run = "./install.sh", requires = "hrsh7th/nvim-cmp" }
  use "junegunn/goyo.vim"
  use { "glepnir/lspsaga.nvim", branch = "main" }

  -- Automatically set up configuration after cloning packer.nvim
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)

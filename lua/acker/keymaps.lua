local opts = { noremap = true, silent = true }


-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
vim.g.mapleader = ","
vim.g.maplocalleader = ","

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Commom --
----------------------------------------------------------------------------------------------------
-- Better window navigation
keymap("n", "<c-h>", "<c-w>h", opts)
keymap("n", "<c-j>", "<c-w>j", opts)
keymap("n", "<c-k>", "<c-w>k", opts)
keymap("n", "<c-l>", "<c-w>l", opts)


-- Move between one long line
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
keymap("n", "gj", "j", opts)
keymap("n", "gk", "k", opts)

-- Move to begin & end
keymap("n", "H", "^", opts)
keymap("n", "L", "g_", opts)

-- Resize with arrows
keymap("n", "<S-Up>", "<cmd>resize -2<CR>", opts)
keymap("n", "<S-Down>", "<cmd>resize +2<CR>", opts)
keymap("n", "<S-Left>", "<cmd>vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", "<cmd>vertical resize +2<CR>", opts)

-- No Highlight
keymap("n", "<leader><space>", "<cmd>nohlsearch<CR>", opts)

-- Press jj fast to enter
keymap("i", "jj", "<ESC>", opts)

-- Unmap Arrows
keymap("i", "<Up>", "<Nop>", opts)
keymap("i", "<Down>", "<Nop>", opts)
keymap("i", "<Left>", "<Nop>", opts)
keymap("i", "<Right>", "<Nop>", opts)
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

-- Close buffers
keymap("n", "<leader>q", "<cmd>q!<CR>", opts)
keymap("n", "<leader>q", "<cmd>Bdelete!<CR>", opts)
----------------------------------------------------------------------------------------------------


-- BufferLine Plugin --
----------------------------------------------------------------------------------------------------
keymap('n', ']b', '<cmd>BufferLineCycleNext<CR>', opts)
keymap('n', '[b', '<cmd>BufferLineCyclePre<CR>', opts)
----------------------------------------------------------------------------------------------------


-- NvimTreeToggle --
----------------------------------------------------------------------------------------------------
keymap("n", "<leader><leader>", "<cmd>NvimTreeToggle<CR>", opts)
----------------------------------------------------------------------------------------------------


-- Toggleterm --
----------------------------------------------------------------------------------------------------
keymap("n", "<leader>1", "<cmd> :ToggleTerm<CR>", opts)
keymap("n", "<leader>2", "<cmd> lua _PYTHON_TOGGLE()<CR>", opts)
keymap("n", "<leader>3", "<cmd> lua _JULIA_TOGGLE()<CR>", opts)
keymap("n", "<leader>4", "<cmd> lua _LAZYGIT_TOGGLE()<CR>", opts)
----------------------------------------------------------------------------------------------------


-- Telescope --
----------------------------------------------------------------------------------------------------
keymap("n", "gl", "<cmd>Telescope diagnostics<CR>", opts)
keymap("n", "<leader>b", "<cmd>lua require('telescope.builtin').buffers("..
             "require('telescope.themes').get_dropdown{previewer = false})<CR>", opts)
keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files("..
             "require('telescope.themes').get_dropdown{previewer = false})<CR>", opts)
keymap("n", "<leader>s", "<cmd>Telescope current_buffer_fuzzy_find<CR>", opts)
keymap("n", "<leader>S", "<cmd>Telescope live_grep theme=ivy<CR>", opts)
keymap("n", "<leader>p", "<cmd>lua require('telescope').extensions.projects.projects()<CR>", opts)
keymap("n", "<leader>v", "<cmd> Telescope find_files cwd=~/.config/nvim<CR>", opts)
keymap("n", "<leader>k", "<cmd>Telescope keymaps<CR>", opts)
keymap("n", "<leader>5", "<cmd>Telescope git_branches<CR>", opts)
keymap("n", "<leader>6", "<cmd>Telescope git_commits<CR>", opts)
----------------------------------------------------------------------------------------------------


-- LSP --
----------------------------------------------------------------------------------------------------
keymap("n", "<leader>r", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "K", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
keymap("n", "<leader>ca", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
keymap("n", "==", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
-------------------------------------------------------------------------------------------------j--

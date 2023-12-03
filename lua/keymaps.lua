local opts = { noremap = true, silent = true }

local keymap = vim.keymap.set

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
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

-- Close buffers
keymap("n", "<leader>q", "<cmd>q!<CR>", opts)
keymap("n", "<leader>Q", "<cmd>qa!<CR>", opts)
keymap("n", "<leader>d", "<cmd>Bdelete!<CR>", opts)

-- Forward Delete
keymap("i", "<C-l>", "<Del>", opts)

-- Last pasted indent
keymap("n", "<leader>[", "`[V`]<", opts)
keymap("n", "<leader>]", "`[V`]>", opts)

-- Insert a new line withlout leaving normal mode
keymap("n", "<leader>o", "o<Esc>", opts)
keymap("n", "<leader>O", "O<Esc>", opts)
----------------------------------------------------------------------------------------------------


-- Packer --
----------------------------------------------------------------------------------------------------
keymap('n', '<leader>\\', '<cmd>source % | PackerSync<CR>', opts)
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
keymap("n", "<leader>b", "<cmd>lua require('telescope.builtin').buffers("..
       "require('telescope.themes').get_dropdown{previewer = false})<CR>", opts)
keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files("..
       "require('telescope.themes').get_dropdown{previewer = false})<CR>", opts)
keymap("n", "<leader>m", "<cmd>Telescope lsp_document_symbols<CR>", opts)
keymap("n", "<leader>s", "<cmd>Telescope current_buffer_fuzzy_find<CR>", opts)
keymap("n", "<leader>S", "<cmd>Telescope live_grep theme=ivy<CR>", opts)
keymap("n", "<leader>p", "<cmd>lua require('telescope').extensions.projects.projects()<CR>", opts)
keymap("n", "<leader>k", "<cmd>Telescope keymaps<CR>", opts)
keymap("n", "<leader>5", "<cmd>Telescope git_branches<CR>", opts)
keymap("n", "<leader>6", "<cmd>Telescope git_commits<CR>", opts)
----------------------------------------------------------------------------------------------------


-- LSP --
----------------------------------------------------------------------------------------------------
--keymap("n", "==", "<cmd>lua vim.lsp.buf.format { async = true }<CR>", opts)
keymap("n", "K", "<cmd>Lspsaga hover_doc<CR>", opts)
keymap("n", "gj", "<cmd>Lspsaga finder<CR>", opts)
keymap("n", "gk", "<cmd>Lspsaga peek_definition<CR>", opts)
keymap("n", "<leader>r", "<cmd>Lspsaga rename<CR>", opts)
keymap("n", "<leader>l", "<cmd>Lspsaga show_line_diagnostics<CR>", opts)
keymap({"n","v"}, "<leader>.", "<cmd>Lspsaga code_action<CR>", opts)
keymap("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", opts)
keymap("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", opts)
----------------------------------------------------------------------------------------------------

-- Prettier --
----------------------------------------------------------------------------------------------------
keymap("n", "==", "<cmd>Prettier<CR>", opts)

-- Copilot --
----------------------------------------------------------------------------------------------------
-- vim.g["copilot_no_tab_map"] = true
-- keymap("i", "<C-n>", "copilot#Accept('<CR>')", opts)
----------------------------------------------------------------------------------------------------

-- Goyosds --
----------------------------------------------------------------------------------------------------
keymap("n", "<leader>g", "<cmd>Goyo<CR>", opts)
----------------------------------------------------------------------------------------------------

-- Aerial --
----------------------------------------------------------------------------------------------------
keymap("n", "<leader>/", "<cmd>AerialToggle<CR>", opts)
----------------------------------------------------------------------------------------------------

keymap("n", "<leader>t", "<cmd>Todo<CR>", opts)

keymap("n", "<leader>0", "<Plug>PlenaryTestFile", opts)

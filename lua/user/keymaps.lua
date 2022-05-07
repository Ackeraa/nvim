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

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Move between one long line
keymap("n", "j", "gj", opts)
keymap("n", "k", "gk", opts)
keymap("n", "gj", "j", opts)
keymap("n", "gk", "k", opts)

-- Move to begin & end
keymap("n", "H", "^", opts)
keymap("n", "L", "g_", opts)

-- Resize with arrows
keymap("n", "<S-Up>", ":resize -2<CR>", opts)
keymap("n", "<S-Down>", ":resize +2<CR>", opts)
keymap("n", "<S-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<S-Right>", ":vertical resize +2<CR>", opts)

-- No highlight
keymap("n", "<Leader><space>", ":nohlsearch<CR>", opts)

-- Insert --
-- Press jk fast to enter
keymap("i", "jj", "<ESC>", opts)

-- BufferLine Plugin --
keymap('n', '<Leader>1', ':BufferLineGoToBuffer 1<CR>', opts)
keymap('n', '<Leader>2', ':BufferLineGoToBuffer 2<CR>', opts)
keymap('n', '<Leader>3', ':BufferLineGoToBuffer 3<CR>', opts)
keymap('n', '<Leader>4', ':BufferLineGoToBuffer 4<CR>', opts)
keymap('n', '<Leader>5', ':BufferLineGoToBuffer 5<CR>', opts)
keymap('n', '<Leader>6', ':BufferLineGoToBuffer 6<CR>', opts)
keymap('n', '<Leader>7', ':BufferLineGoToBuffer 7<CR>', opts)
keymap('n', '<Leader>8', ':BufferLineGoToBuffer 8<CR>', opts)
keymap('n', '<Leader>9', ':BufferLineGoToBuffer 9<CR>', opts)


keymap('n', ']b', ':BufferLineCycleNext<CR>', opts)
keymap('n', '[b', ':BufferLineCyclePre<CR>', opts)

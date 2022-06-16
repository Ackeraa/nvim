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

-- Insert --
-- Press jk fast to enter
keymap("i", "jj", "<ESC>", opts)

-- BufferLine Plugin --
keymap('n', ']b', ':BufferLineCycleNext<CR>', opts)
keymap('n', '[b', ':BufferLineCyclePre<CR>', opts)


-- Unmap Arrows --
keymap("n", "<up>", "<nop>", opts)
keymap("n", "<down>", "<nop>", opts)
keymap("n", "<left>", "<nop>", opts)
keymap("n", "<right>", "<nop>", opts)
keymap("i", "<up>", "<nop>", opts)
keymap("i", "<down>", "<nop>", opts)
keymap("i", "<left>", "<nop>", opts)
keymap("i", "<right>", "<nop>", opts)


-- Unmap Backspace--
keymap("i", "<BS>", "<Nop>", opts)


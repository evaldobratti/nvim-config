local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- shorten function name
local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


keymap("", "<F1>", "<Nop>", opts)

-- Modes
--   normal_mode "n"
--   insert_mode "i"
--   visual_mode "v"
--   visual_block_mode "x"
--   term_mode "t"
--   command_mode "c"

-- Normal --
-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

keymap("n", "<S-j>", "3j", opts)
keymap("n", "<S-k>", "3k", opts)

keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)
keymap("n", "<leader>l", ":NvimTreeFindFile<cr>", opts)

-- resize with arrows
keymap("n", "<C-Up>", ":resize +2<cr>", opts)
keymap("n", "<C-Down>", ":resize -2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)
keymap("n", "<S-q>", ":Bdelete<cr>", opts)
keymap("n", "<S-w>", ":q<cr>", opts)
-- keymap("n", "<S-w>", ":%bd|e#<cr>", opts)

-- Visual --
-- stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "<A-j>", ":m .+1<cr>==", opts)
keymap("v", "<A-k>", ":m .-2<cr>==", opts)
keymap("v", "p", '"_dP', opts)


-- Visual Block --
-- move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Terminal --
-- Better terminal navigation
keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

-- Telescope
keymap("n", "<leader>j", "<cmd>Telescope find_files hidden=true<cr>", opts)
keymap("n", "<leader>f", "<cmd>Telescope live_grep<cr>", opts)
keymap("n", "<leader>p", "<cmd>Telescope projects<cr>", opts)

-- vim test
keymap("n", "t", "<cmd>TestNearest<cr>", opts)
keymap("n", "T", "<cmd>TestFile<cr>", opts)

keymap("n", "f", "<cmd>Prettier<cr>", opts)

keymap("n", "s", "<cmd>w!<cr>", opts)

keymap("n", "m", "<cmd>ReachOpen buffers<cr>", opts)

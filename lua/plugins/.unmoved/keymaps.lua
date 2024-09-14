local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.keymap.set

vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("", "<Space>", "<Nop>", opts)
keymap("x", "<C-c>", '"+y', opts)


-- Move text up and down
keymap("n", "<A-j>", ":m .+1<CR>==", opts)
keymap("n", "<A-k>", ":m .-2<CR>==", opts)

-- Press jk fast to exit insert mode 
keymap("i", "jk", "<ESC>", opts)
keymap("i", "kj", "<ESC>", opts)

-- Stay in indent mode
keymap("v", "<", "<gv^", opts)
keymap("v", ">", ">gv^", opts)

-- Move text up and down
keymap("v", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-k>", ":m '<-2<CR>gv=gv", opts)
keymap("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":m '>+1<CR>gv=gv", opts)
keymap("x", "K", ":m '<-2<CR>gv=gv", opts)
keymap("x", "<A-j>", ":m '>+1<CR>gv=gv", opts)
keymap("x", "<A-k>", ":m '<-2<CR>gv=gv", opts)

-- remove arrow keys
keymap("n", "<Up>", "<Nop>", opts)
keymap("n", "<Down>", "<Nop>", opts)
keymap("n", "<Left>", "<Nop>", opts)
keymap("n", "<Right>", "<Nop>", opts)

keymap("i", "<Up>", "<Nop>", opts)
keymap("i", "<Down>", "<Nop>", opts)
keymap("i", "<Left>", "<Nop>", opts)
keymap("i", "<Right>", "<Nop>", opts)

keymap("v", "<Up>", "<Nop>", opts)
keymap("v", "<Down>", "<Nop>", opts)
keymap("v", "<Left>", "<Nop>", opts)
keymap("v", "<Right>", "<Nop>", opts)

-- TrueZen
local api = vim.api

api.nvim_set_keymap("n", "<leader>zn", ":TZNarrow<CR>", {})
api.nvim_set_keymap("v", "<leader>zn", ":'<,'>TZNarrow<CR>", {})

-- or
-- local truezen = require('true-zen')
-- local keymap = vim.keymap
--
-- keymap.set('n', '<leader>zn', function()
--   local first = 0
--   local last = vim.api.nvim_buf_line_count(0)
--   truezen.narrow(first, last)
-- end, { noremap = true })
-- keymap.set('v', '<leader>zn', function()
--   local first = vim.fn.line('v')
--   local last = vim.fn.line('.')
--   truezen.narrow(first, last)
-- end, { noremap = true })
-- keymap.set('n', '<leader>zf', truezen.focus, { noremap = true })
-- keymap.set('n', '<leader>zm', truezen.minimalist, { noremap = true })
-- keymap.set('n', '<leader>za', truezen.ataraxis, { noremap = true })
--
-- -- word corrections
-- api.nvim_set_keymap("n", "<leader>xz", "[s1z=", {}) -- last misspeling
-- api.nvim_set_keymap("n", "<leader>xc", "]s1z=", {}) -- next misspeling
-- api.nvim_set_keymap("n", "<leader>xx", "1z=", {}) -- this word
-- api.nvim_set_keymap('i', '@mail', '<C-r>=\'ostap.tymchenko.562w5@aleeas.com\'<CR>', { noremap = true, silent = true })

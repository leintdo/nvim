local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "

-- Save and quit
keymap("n", "<leader>w", "<cmd>w<cr>", { desc = "Save" }, opts)
keymap("n", "<leader>q", "<cmd>q<cr>", { desc = "Quit" }, opts)

-- Adjust Line
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

keymap("n", "<", "<<")
keymap("n", ">", ">>")

-- Buffer Manager
keymap("n", "<leader>bn", "<cmd>bnext<cr>", { desc = "Next Buffers" }, opts)
keymap("n", "<leader>bp", "<cmd>bprevious<cr>", { desc = "Next Buffers" }, opts)

-- Split
keymap("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }, opts)
keymap("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }, opts)
keymap("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }, opts)
keymap("n", "<leader>sx", "<cmd>close<cr>", { desc = "Close current split" }, opts)

-- Lazy
keymap("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" }, opts)

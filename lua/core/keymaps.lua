local keymap = vim.keymap.set 
local opts =  { noremap = true, silent = true }

vim.g.mapleader = " "

-- Save and quit
keymap("n", "<leader>w", "<cmd>w<cr>", {desc = "Save"}, opts)
keymap("n", "<leader>q", "<cmd>q<cr>", {desc = "Quit"}, opts)

-- Adjust Line
keymap("v", "<", "<gv")
keymap("v", ">", ">gv")

keymap("n", "<", "<<")
keymap("n", ">", ">>")

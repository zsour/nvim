vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", {desc = "Exit insert mode with jk."})

keymap.set("n", "<leader>nh", ":nohl<CR>", {desc = "Clear search highlights."})


keymap.set("n", "<leader>+", "<C-a>", {desc = "Increment number."})
keymap.set("n", "<leader>-", "<C-x>", {desc = "Decrement number."})

keymap.set("i", "<C-h>", "<Left>", {desc = "Move cursor left."})
keymap.set("i", "<C-l>", "<Right>", {desc = "Move cursor right."})
keymap.set("i", "<C-j>", "<Down>", {desc = "Move cursor down."})
keymap.set("i", "<C-k>", "<Up>", {desc = "Move cursor up."})

keymap.set("n", "<leader>sv", "<C-w>v", {desc = "Split window vertically."})
keymap.set("n", "<leader>sh", "<C-w>s", {desc = "Split window horizontally."})
keymap.set("n", "<leader>se", "<C-w>=", {desc = "Make splits equal size."})
keymap.set("n", "<leader>sd", "<cmd>close<CR>", {desc = "Close current split."})

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", {desc = "Open new tab."})
keymap.set("n", "<leader>tc", "<cmd>tabnew %<CR>", {desc = "Open current buffer in new tab."})
keymap.set("n", "<leader>td", "<cmd>tabclose<CR>", {desc = "Close current tab."})
keymap.set("n", "<tab>", "<cmd>tabn<CR>", {desc = "Shift tab."})
keymap.set("n", "<S-tab>", "<cmd>tabp<CR>", {desc = "Shift back tab."})

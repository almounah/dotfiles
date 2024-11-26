-- Leader key
vim.g.mapleader = " "

-- Browsing panes
vim.keymap.set("n", "<leader><Up>", ":wincmd k<CR>")
vim.keymap.set("n", "<leader><Down>", ":wincmd j<CR>")
vim.keymap.set("n", "<leader><Left>", ":wincmd h<CR>")
vim.keymap.set("n", "<leader><Right>", ":wincmd l<CR>")

-- Browsing tabs
vim.keymap.set("n", "<leader><tab>", "gt")
vim.keymap.set("n", "<leader><s-tab>", "gt")

-- Visual mode moving
vim.keymap.set("v", "<leader><Down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<leader><Up>", ":m '<-2<CR>gv=gv")

-- Void Register Pasting
vim.keymap.set("x", "<leader>p", [["_dP]])

-- Clipboard copying
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- Tab indenting
vim.keymap.set("v", "<tab>", ">gv")
vim.keymap.set("v", "<s-tab>", "<gv")

-- Tmux like splitting
vim.keymap.set("n", "<leader>%", ":vsp<CR>")
vim.keymap.set("n", '<leader>"', ":split<CR>")

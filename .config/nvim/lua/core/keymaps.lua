vim.g.mapleader = " "
vim.g.maplocalleader = " "

local set = vim.keymap.set
local opts = { noremap = true, silent = true }

set({ "n", "v" }, "<space>", "<nop>", { silent = true })

set("n", "x", '"_x', opts)

set("n", "<C-d>", "<C-d>zz", opts)
set("n", "<C-u>", "<C-u>zz", opts)

set("n", "n", "nzzzv", opts)
set("n", "N", "Nzzzv", opts)

set("n", "<Tab>", ":bnext<CR>", opts)
set("n", "<S-Tab>", ":bprevious<CR>", opts)

set("v", "<", "<gv", opts)
set("v", ">", ">gv", opts)
set("v", "J", ":m '>+1<CR>gv=gv", opts)
set("v", "K", ":m '<-2<CR>gv=gv", opts)

set("v", "p", '"_dP', opts)

set("v", "<leader>y", '"+y', opts)

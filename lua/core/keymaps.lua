-- Generic keymaps not associated with plugins

-- set leader key
vim.g.mapleader = " "

local keymap = vim.keymap
local icons = require("core.icons")

-- generic write, quit, close buffer etc...
keymap.set("n", "<leader>w", "<cmd>write<CR>", { desc = icons.save .. " Save" })
keymap.set("n", "<leader>q", "<cmd>confirm quit<CR>", { desc = icons.quit .. " Quit" })
keymap.set("n", "<leader>bc", "<cmd>confirm bwipeout<CR>bprevious<CR>", { desc = icons.close .. " Close current buffer" })

-- use jj or kk to exit insert mode
keymap.set("i", "jj", "<ESC>", { desc = "Exit insert mode with jj" })
keymap.set("i", "kk", "<ESC>", { desc = "Exit insert mode with kk" })

-- split window
keymap.set("n", "|", "<C-w>v", { desc = icons.split_horizontal .. " Split window vertically" })
keymap.set("n", "\\", "<C-w>s", { desc = icons.split_vertical .. " Split window horizontally" })

-- window navigation (commented out, since tmux navigator has the shortcuts already)
-- keymap.set("n", "<C-l>", "<C-w>l", { desc = icons.arrow_right .. "Window focus right" })
-- keymap.set("n", "<C-h>", "<C-w>h", { desc = icons.arrow_left .. " Window focus left" })
-- keymap.set("n", "<C-j>", "<C-w>j", { desc = icons.arrow_down .. " Window focus down" })
-- keymap.set("n", "<C-k>", "<C-w>k", { desc = icons.arrow_up .. " Window focus up" })

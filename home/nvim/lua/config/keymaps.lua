-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.del("n", "<leader>w|", {})
vim.keymap.del("n", "<leader>w-", {})

vim.keymap.set("n", "<leader>wh", "<C-W>h", { desc = "Split window right", remap = true })
vim.keymap.set("n", "<leader>wv", "<C-W>v", { desc = "Split window below", remap = true })

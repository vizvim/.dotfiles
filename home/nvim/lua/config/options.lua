-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Use snacks.explorer as the file explorer and disable neo-tree.
-- This is LazyVim's default for install_version 8, but we set it explicitly so the
-- intent is self-documenting and stable. It enables the editor.snacks_explorer
-- extra and disables the editor.neo-tree extra. The explorer is positioned on the
-- right in lua/plugins/snacks.lua.
vim.g.lazyvim_explorer = "snacks"

return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          -- show the file explorer on the right-hand side of the screen
          layout = { layout = { position = "right" } },
          -- show dotfiles and gitignored files (parity with the old neo-tree setup);
          -- toggle at runtime with `H` (hidden) and `I` (ignored)
          hidden = true,
          ignored = true,
        },
      },
    },
  },
}

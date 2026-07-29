return {
  -- snacks.nvim provides LazyVim's default file explorer.
  -- Open it on the right-hand side of the screen and, since this is a dotfiles
  -- repo, show hidden (dotfiles) and gitignored files.
  {
    "folke/snacks.nvim",
    opts = {
      picker = {
        sources = {
          explorer = {
            layout = { layout = { position = "right" } },
            hidden = true,
            ignored = true,
          },
          files = {
            hidden = true,
            ignored = true,
          },
          grep = {
            hidden = true,
            ignored = true,
          },
          grep_word = {
            hidden = true,
            ignored = true,
          },
        },
      },
    },
  },
}

return {
  -- install the colorscheme
  { "folke/tokyonight.nvim" },

  -- configure LazyVim to load tokyonight (matches the wezterm "Tokyo Night Moon" theme)
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-moon",
    },
  },
}

return {
  -- install the colorscheme
  { "folke/tokyonight.nvim" },

  -- configure LazyVim to load it
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "tokyonight-night",
    },
  },
}

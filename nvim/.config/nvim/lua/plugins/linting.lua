return {
  {
    "mfussenegger/nvim-lint",
    event = "LazyFile",
    opts = {
      -- Events to trigger linters
      events = { "BufWritePost", "BufReadPost", "InsertLeave" },
      linters_by_ft = {
        go = { "golangcilint" },
      },
    },
  },
}

return {
  "telescope.nvim",
  dependecies = {
    "nvim-telescope/teslescope-live-grep-args.nvim",
    keys = {
      { "<Leader>fS", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "Live Grep" },
    },
  },
}

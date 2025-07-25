return {
  "telescope.nvim",
  dependecies = {
    "nvim-telescope/teslescope-live-grep-args.nvim",
    event = "VeryLazy",
    keys = {
      { "<Leader>fS", ":Telescope live_grep_args<CR>", desc = "Live Grep" },
    },
  },
}

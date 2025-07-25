return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- Example of importing a plugin
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- colors ambiance
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.bars-and-lines.lualine-nvim" },
  { import = "astrocommunity.scrolling.nvim-scrollbar" },

  -- git improvements
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.git-blame-nvim" },
  { import = "astrocommunity.git.gitgraph-nvim" },

  -- utilities
  { import = "astrocommunity.diagnostics.trouble-nvim" },
  { import = "astrocommunity.utility.telescope-live-grep-args-nvim" },
  { import = "astrocommunity.completion.blink-cmp" },
  { import = "astrocommunity.game.leetcode-nvim" },
  -- { import = "astrocommunity.lsp.coc-nvim" },

  -- Markdown stuff
  { import = "astrocommunity.markdown-and-latex.markdown-preview-nvim" },
  { import = "astrocommunity.markdown-and-latex.markview-nvim" },
  { import = "astrocommunity.editing-support.neogen" },

  -- languages
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.fish" },
  { import = "astrocommunity.pack.html-css" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.sql" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.xml" },
  { import = "astrocommunity.pack.yaml" },
}

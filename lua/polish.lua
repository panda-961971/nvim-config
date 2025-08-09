-- This will run last in the setup process and is a good place to configure
-- things like custom filetypes. This is just pure lua so anything that doesn't
-- fit in the normal config locations above can go here
return {
  require("lualine").setup {
    sections = {
      lualine_x = { { "searchcount", maxcount = 999, timeout = 500 }, "encoding", "fileformat", "filetype" },
      lualine_y = { "lsp_status", "progress" },
      lualine_z = { "location" },
    },
    inactive_sections = {
      lualine_b = { "windows", "tabs" },
    },
  },
}

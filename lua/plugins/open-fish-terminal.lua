local api = vim.api
local uv = vim.uv
local map = vim.keymap.set

local function get_git_root()
  local handle = io.popen "git rev-parse --show-toplevel 2>/dev/null"
  if handle then
    local result = handle:read "*l"
    handle:close()
    if result and uv.fs_stat(result) then return result end
  end
  return os.getenv "HOME"
end

map("n", "<Leader>tt", function()
  local term_buf = api.nvim_create_buf(true, false)
  local git_dir = get_git_root()

  api.nvim_set_current_buf(term_buf)
  api.nvim_set_current_dir(git_dir)
  api.nvim_command "terminal fish"
  api.nvim_buf_set_name(term_buf, "terminal")
  api.nvim_command "startinsert"
end, { noremap = true, silent = true, desc = "Open terminal in a new buffer" })

map("t", "`", "<C-\\><C-n>", { desc = "Exit terminal mode" })
return {}

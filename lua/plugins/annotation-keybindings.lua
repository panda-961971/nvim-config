vim.api.nvim_set_keymap("n", "<Leader>aa", "O/**/<Left><Left>", {
  noremap = true,
  silent = true,
  desc = "C Line comment",
})
vim.api.nvim_set_keymap(
  "n",
  "<Leader>aA",
  "O/**<Enter>* @brief<Enter>*/<Up>",
  { noremap = true, silent = true, desc = "C Generic doxygen comment" }
)

return {}

vim.api.nvim_create_user_command("AsyncTerm", function(context)
  if context.args == "v" then
    vim.cmd("vnew")
  else
    vim.cmd("new")
  end
  vim.fn.termopen("zsh")
end, { nargs = 1 })


vim.keymap.set("n", "<C-w>z", "<C-w><bar><C-w>_")
vim.keymap.set("n", "<C-w>_", ":AsyncTerm h<cr>")
vim.keymap.set("n", "<C-w><bar>", ":AsyncTerm v<cr>")
vim.keymap.set("t", "<Esc>", '<C-\\><C-n>')

vim.api.nvim_create_augroup("terminal", { clear = true })
vim.api.nvim_create_autocmd("TermOpen", {
  group = "terminal",
  callback = function()
    vim.keymap.set("n", "o", ":AsyncTerm h<cr>", { buffer = true })
    vim.keymap.set("n", "x", ":AsyncTerm v<cr>", { buffer = true })
    vim.opt_local.number = false
    vim.opt_local.rnu = false
    vim.cmd("startinsert")
  end,
})

-- autocmd TermClose * if getline('$') == '[Process exited 0]' | close | endif

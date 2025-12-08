vim.opt_local.tabstop = 8
vim.opt_local.softtabstop = 0
vim.opt_local.shiftwidth = 8
vim.opt_local.expandtab = false

vim.api.nvim_create_user_command('GoplsGCDetails', function()
  vim.cmd('CocCommand gopls.gc_details ' .. 'file://' .. vim.fn.expand('%:p'))
end, {})

-- Requires neovim >= 0.10
-- vim.keymap.set("ia", "iferr", [[if err != nil {<CR>return err<CR>}<CR>]], { buffer = true })

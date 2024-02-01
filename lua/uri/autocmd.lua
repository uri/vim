local uri_group = vim.api.nvim_create_augroup('UriGroup', { clear = true })

-- Restore cursor position
vim.api.nvim_create_autocmd({ "BufReadPost" }, {
	group = uri_group,
	pattern = { "*" },
	callback = function()
		if vim.o.ft ~= 'gitcommit' then
			vim.api.nvim_exec('silent! normal! g`"zvzz', false)
		end
	end,
})

-- "     autocmd BufRead,BufNewFile *.md setlocal spell
-- "     autocmd BufRead,BufNewFile *.ron setlocal ft=ruby
-- "     autocmd FileType gitcommit setlocal spell
-- "     autocmd FileType markdown setlocal tw=80
-- "     autocmd filetype crontab setlocal nobackup nowritebackup
-- "     autocmd filetype go setlocal tabstop=8 softtabstop=0 noexpandtab shiftwidth=8 smarttab
-- vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
--   group = uri_group,
--   pattern = { "*.md", "gitcommit" },
--   command = "setlocal spell"
-- })

vim.api.nvim_create_autocmd("FileType", {
	group = uri_group,
	pattern = { "gitcommit", "markdown", "crontab" },
	command = "setlocal spell"
})

vim.api.nvim_create_autocmd('TextYankPost', {
	group = uri_group,
	pattern = '*',
	callback = function()
		vim.highlight.on_yank({
			higroup = 'IncSearch',
			timeout = 400,
		})
	end,
})

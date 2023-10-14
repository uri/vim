vim.g.ackprg = 'rg --vimgrep --no-heading -i'
vim.keymap.set("n", "<leader>a", ':Ack!<space>""<left>')
vim.keymap.set("n", "<leader>sf", ":exe 'Ack! ' . expand('%:t:r')<cr>")
vim.keymap.set("n", "<leader>ss", ":exe 'Ack! ' . expand('<cword>')<cr>")

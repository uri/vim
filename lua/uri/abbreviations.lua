-- Abbreviations
vim.cmd([[iabbr clog console.log()<left>]])
vim.cmd([[iabbr flog fmt.Println("")<left><left>]])
vim.cmd([[iabbr fpr fmt.Printf("\n",)<left><left><left><left><left>]])
vim.cmd([[iabbr gomain package<space>main<cr><cr>func<space>main()<space>{<cr>}]])

-- date/time
vim.cmd([[iab <expr> ddd strftime('%b %d, %Y')]])
vim.cmd([[iab <expr> dtt "(" . strftime('%T') . ")"]])

vim.keymap.set("n", "<C-f>", ":Buffers<cr>")
vim.keymap.set("n", "<C-g>", ":GFiles?<cr>")
vim.keymap.set("n", "<C-p>", ":FZF<cr>")
vim.keymap.set("n", "<C-h>", ":History<cr>")     --	v:oldfiles and open buffers
vim.keymap.set("n", "<leader>fl", ":Locate /")   -- PATTERN	locate command output
vim.keymap.set("n", "<Space>p", ":Commands<cr>") -- TODO
vim.keymap.set("n", "<Space>h", ":History:<cr>")
vim.keymap.set("n", "<Space><Space>", ":BLines!<cr>")
vim.keymap.set("n", "<Space>l", ":Lines<cr>")
vim.keymap.set("n", "<Space>t", ":BTags<cr>")
vim.keymap.set("n", "<Space>r", ":Rg<cr>")        -- [PATTERN]	rg search result (ALT-A to select all, ALT-D to deselect all)
vim.keymap.set("n", "<Space>R", ":Rg!<cr>")       -- Full screen
vim.keymap.set("n", "<Space>c", ":Changes<cr>")   --	Changelist across all open buffers
vim.keymap.set("n", "<Space>C", ":Changes!<cr>")
vim.keymap.set("n", "<Space>:", ":History:<cr>")  --	Command history
vim.keymap.set("n", "<Space>;", ":History:<cr>")  --	Command history
vim.keymap.set("n", "<Space>/", ":History/<cr>")  --	Search history
vim.keymap.set("n", "<Space>w", ":Windows<cr>")   --	Windows
vim.keymap.set("n", "<Space>m", ":Marks<cr>")     --	Marks
vim.keymap.set("n", "<Space>j", ":Jumps<cr>")     --	Jumps
vim.keymap.set("n", "<Space>h", ":Helptags<cr>")  --	Help tags 1
vim.keymap.set("n", "<Space>f", ":Filetypes<cr>") --	File types
-- vim.keymap.set("n", "<Space>fR", ":RG<cr>") -- [PATTERN]	rg search result; relaunch ripgrep on every keystroke
-- vim.keymap.set("n", "<leader>R", ":Tags<cr>")
-- vim.keymap.set("n", "", ":Colors") --	Color schemes
-- vim.keymap.set("n", "", ":Snippets")  --	Snippets (UltiSnips)
-- vim.keymap.set("n", "", ":Commits")  -- [LOG_OPTS]	Git commits (requires fugitive.vim)
-- vim.keymap.set("n", "", ":BCommits") -- [LOG_OPTS]	Git commits for the current buffer; visual-select lines to track changes in the range
-- vim.keymap.set("n", "", ":Maps")     --	Normal mode mappings

-- vim.keymap.set("i", "<c-x><c-k>", "<plug>(fzf-complete-word)")
vim.keymap.set("i", "<M-f>", "<plug>(fzf-complete-path)")
vim.keymap.set("i", "<M-Space>", "<plug>(fzf-complete-line)")

-- Open regular folders with FZF
-- edit "options"
vim.keymap.set("n", "<leader>eo", ":FZF ~/.config/nvim/lua/uri<cr>")
-- edit plugin "options"
vim.keymap.set("n", "<leader>ep", ":FZF ~/.config/nvim/after/plugin<cr>")

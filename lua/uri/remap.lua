-- normal
--
--
vim.keymap.set("", "L", "g_")
vim.keymap.set("", "H", "^")
vim.keymap.set("n", "MM", "M")
vim.keymap.set("n", "MH", "H")
vim.keymap.set("n", "ML", "L")
vim.keymap.set("n", "Y", "y$") -- Y is the same as yy so make it more useful
vim.keymap.set("n", "#", ":let @/=expand('<cword>') <bar> set hls <cr>", { silent = true })
vim.keymap.set("n", "Q", "q")
-- vim.keymap.set("n", "<M-q>", ":bp|bd #<cr>")
vim.keymap.set("n", "q", ":bd<cr>")
vim.keymap.set("n", "<M-q>", [[:try
bp|bd #
catch
bd %
endtry
<cr>
]])
-- vim.keymap.set("n", "<esc>", "<esc>:noh<bar>:ccl<cr>", { silent = true })
vim.keymap.set("n", "<Left>", "5<C-w><")
vim.keymap.set("n", "<Up>", "3<C-W>+")
vim.keymap.set("n", "<Right>", "5<C-W>>")
vim.keymap.set("n", "<Down>", "3<C-w>-")
-- vim.keymap.set("n", "<C-w>+", "<C-w><bar><C-w>_")
-- vim.keymap.set("n", "<Backspace>", "za")

-- visual
--
--
vim.keymap.set("v", "//", [[y/\V<C-R>=escape(@",'/\')<CR><CR>]])

-- insert
--
--
-- vim.keymap.set("i", "<C-e>", "<End>")
-- vim.keymap.set("i", "<C-j>", "<C-o>o")


-- Leader
--
--

vim.keymap.set("n", "<leader>w", ":setl wrap!<CR>")
vim.keymap.set("n", "<leader>W", ":set wrap!<CR>")
vim.keymap.set("n", "<leader>#", ":%s///g<left><left>")
vim.keymap.set("v", "<leader>#", ":s///g<left><left>")
vim.keymap.set("n", "<leader>z", ":wincmd | <bar> wincmd _<cr>")
vim.keymap.set("n", "<leader>a", "<C-w>200h")
vim.keymap.set("n", "<leader>g", "<C-w>200l")

-- Useful copy remaps
vim.keymap.set("n", "<leader>yy", ":%y<CR>")
vim.keymap.set("n", "<leader>yf", [[:let @*=expand("%")<cr>]])
vim.keymap.set("n", "<leader>yF", [[:let @*=expand("%") . ":" . line(".")<cr>]])
vim.keymap.set("n", "<leader>ye", [[:let @*=system("epoch -n")<cr>]])

-- Access frequent files
vim.keymap.set("v", "<leader>p", '"_dp')
vim.keymap.set("n", "<leader>ev", ":e $MYVIMRC<cr>")
vim.keymap.set("n", "<leader>ez", ":e $ZSH<cr>")

-- Other
--
--

-- netrw
-- vim.keymap.set("n", "<leader>b", ":Lexplore <CR>")
-- vim.keymap.set("n", "<leader>B", ":Lexplore %:p:h<CR>")

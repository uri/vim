-- normal
--
--
vim.keymap.set("n", "L", "g_")
vim.keymap.set("n", "H", "^")
vim.keymap.set("n", "Y", "y$") -- Y is the same as yy so make it more useful
vim.keymap.set("n", "#", ":let @/=expand('<cword>') <bar> set hls <cr>", { silent = true })
vim.keymap.set("n", "Q", "q")
vim.keymap.set("n", "q", ":bd<cr>")
vim.keymap.set("n", "<esc>", "<esc>:noh<bar>:ccl<cr>", { silent = true })
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

-- Useful copy remaps
vim.keymap.set("n", "<leader>yy", ":%y<CR>")
vim.keymap.set("n", "<leader>yF", [[:let @*=expand("%")<cr>]])
vim.keymap.set("n", "<leader>yf", [[:let @*=expand("%") . ":" . line(".")<cr>]])
vim.keymap.set("n", "<leader>ye", [[:let @*=system("epoch -n")<cr>]])

-- Access frequent files
local vim_home = "~/.vim"
local uri_lua = vim_home .. "/lua/uri"
vim.keymap.set("v", "<leader>p", '"_dP')
vim.keymap.set("n", "<leader>ev", ":e $MYVIMRC<cr>")
vim.keymap.set("n", "<leader>ep", ":e " .. uri_lua .. "/plugins.lua<cr>")
vim.keymap.set("n", "<leader>er", ":e " .. uri_lua .. "/remap.lua<cr>")
vim.keymap.set("n", "<leader>eu", ":e " .. uri_lua .. "<cr>")
vim.keymap.set("n", "<leader>ea", ":Locate vim/after/plugin<cr>")
vim.keymap.set("n", "<leader>ez", ":e $ZSH<cr>")

-- Other
--
--

-- netrw
vim.keymap.set("n", "<leader>b", ":Lexplore <CR>")
vim.keymap.set("n", "<leader>B", ":Lexplore %:p:h<CR>")

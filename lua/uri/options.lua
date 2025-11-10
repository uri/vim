-- Leader
vim.g.mapleader = '_'
-- vim.g.mapleader = ';'

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.clipboard = 'unnamedplus' -- Use system clipboard by default
vim.opt.nu = true
vim.opt.rnu = true
vim.opt.wrap = false
vim.opt.hidden = true -- Do not error when hidding an unsaved buffer
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.inccommand = 'split'
vim.opt.wildmenu = true
vim.opt.sidescroll = 50
vim.opt.exrc = true              -- Use :trust to enable files
vim.opt.mouse = 'a'
vim.opt.fdo:remove({ 'search' }) -- Do not search in folded regions
vim.opt.grepprg = 'rg --vimgrep --no-heading -i'
vim.opt.formatoptions:remove({ 'o' })
-- vim.opt.fdo-=search

-- Legacy
-- vim.opt.ttimeoutlen = 0 -- If things feel off try this
-- set backspace=indent,eol,start
-- vim.opt.backspace='indent,eol,start' -- should already be the default

-- status line
vim.opt.statusline:append([[ %f %h%w%m%r%=%-14.(%l,%c%V%) %P]])

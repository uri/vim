local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  -- extra
  --
  -- Plug 'godlygeek/tabular'
  -- Plug 'jiangmiao/auto-pairs'
  -- Colors
  --
  -- Plug 'rakr/vim-one'
  -- Plug 'lifepillar/vim-solarized8'
  -- Plug 'arcticicestudio/nord-vim'
  -- Plug 'junegunn/seoul256.vim'
  --
  -- Might be necessary
  -- Plug 'powerman/vim-plugin-AnsiEsc'

  { 'rose-pine/neovim',                as = 'rose-pine' },
  { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' },
  { 'neoclide/coc.nvim',               branch = 'release' },
  "mbbill/undotree",
  { 'junegunn/fzf',           run = ':call fzf#install()' },
  'junegunn/fzf.vim',
  'tpope/vim-fugitive',
  'tpope/vim-commentary',
  'tpope/vim-surround',
  'tpope/vim-repeat',
  'tpope/vim-unimpaired',
  'tpope/vim-abolish', -- crc,crs, etc.
  'tpope/vim-rhubarb', -- :Gbrowse
  'tpope/vim-dispatch',
  'airblade/vim-gitgutter',
  'mileszs/ack.vim',
  'justinmk/vim-sneak',
  'machakann/vim-highlightedyank',
  -- 'scrooloose/nerdtree', -- { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
  { 'mg979/vim-visual-multi', branch = 'master' },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  }
})

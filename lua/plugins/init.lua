return {
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

  {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
      local parser_config = require 'nvim-treesitter.parsers'.get_parser_configs()
      parser_config.gotmpl = {
        install_info = {
          url = "https://github.com/baptman21/tree-sitter-go-template",
          files = { "src/parser.c" }
        },
        filetype = "gotmpl",
        used_by = { "gohtmltmpl", "gotexttmpl", "gotmpl", "yaml" }
      }
    end
  },

  { 'nvim-treesitter/nvim-treesitter-context', opts = { enabled = true } },
  { 'neoclide/coc.nvim',                       branch = 'release' },
  "mbbill/undotree",
  { 'junegunn/fzf',       build = ':call fzf#install()', lazy = false },
  'junegunn/fzf.vim',
  'tpope/vim-surround',
  'tpope/vim-repeat',
  'tpope/vim-unimpaired',
  'tpope/vim-abolish', -- crc,crs, etc.
  'tpope/vim-rhubarb', -- :Gbrowse
  { 'tpope/vim-dispatch', lazy = true,                   cmd = 'Dispatch' },
  'tpope/vim-dadbod',
  'justinmk/vim-sneak',
  -- 'machakann/vim-highlightedyank',
  -- {
  --   'mg979/vim-visual-multi',
  --   branch = 'master',
  --   init = function()
  --     vim.g.VM_highlight_matches = 'underline'
  --     vim.g.VM_maps = {
  --       ["Undo"] = 'u',
  --       ["Redo"] = '<C-r>',
  --       ["Add Cursor Down"] = '<C-j>',
  --       ["Add Cursor Up"] = '<C-k>',
  --     }
  --     vim.g.VM_theme = 'iceblue'
  --   end
  -- },
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {}
  },
  {
    'numToStr/Comment.nvim',
    opts = {},
    lazy = false,
  },
  {
    'kristijanhusak/vim-dadbod-ui',
    dependencies = {
      -- { 'tpope/vim-dadbod',                     lazy = true },
      { 'tpope/vim-dadbod',                     lazy = false },
      { 'kristijanhusak/vim-dadbod-completion', ft = { 'sql', 'mysql', 'plsql' }, lazy = true },
    },
    cmd = {
      'DBUI',
      'DBUIToggle',
      'DBUIAddConnection',
      'DBUIFindBuffer',
    },
    init = function()
      -- Your DBUI configuration
      vim.g.db_ui_use_nerd_fonts = 1
    end,
  },

  -- {
  --   'fatih/vim-go',
  --   init = function()
  --     vim.g.go_metalinter_command = 'golangci-lint'
  --     -- vim.g.go_metalinter_autosave_enabled = { 'golanglint-ci' };
  --   end,
  -- }
  -- { "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {} }
}

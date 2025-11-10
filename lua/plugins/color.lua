return {
  {
    'rose-pine/neovim',
    name = 'rose-pine',
    lazy = true,
    opts = {
      disable_italics = false,
      bold_vert_split = true,
    }
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = true,
  },
  {
    "NLKNguyen/papercolor-theme",
    -- lazy = false,
    -- priority = 1000,
    -- config = function()
    --
    --   vim.cmd('colorscheme PaperColor')
    -- end,
  },
  "tinted-theming/tinted-nvim",
  -- {
  --   'MeanderingProgrammer/render-markdown.nvim',
  --   dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.nvim' }, -- if you use the mini.nvim suite
  --   -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'echasnovski/mini.icons' }, -- if you use standalone mini plugins
  --   -- dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
  --   ---@module 'render-markdown'
  --   ---@type render.md.UserConfig
  --   opts = { ft = { "markdown", "codecompanion" } },
  -- }
}

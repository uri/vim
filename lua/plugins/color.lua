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
}

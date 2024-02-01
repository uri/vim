-- Color
-- require("rose-pine").load()

if os.date("%H") >= "14" then
  -- catppuccin-latte, catppuccin-frappe, catppuccin-macchiato, catppuccin-mocha
  vim.cmd.colorscheme "catppuccin"
  -- vim.cmd('colorscheme rose-pine-moon')
  vim.cmd('set bg=dark')
else
  vim.cmd.colorscheme "catppuccin-latte"
  -- vim.cmd('colorscheme rose-pine-dawn')
  vim.cmd('set bg=light')
end
-- tmp override
-- vim.cmd('colorscheme rose-pine-main')
-- vim.cmd('set bg=dark')

vim.g.enable_bold_font = true
-- vim.cmd("highlight Comment cterm=italic")

vim.o.termguicolors = true


-- if (has("termguicolors"))
--   let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
--   let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
--   set termguicolors

--   " set termguicolors
--   " set t_8b=[48;2;%lu;%lu;%lum
--   " set t_8f=[38;2;%lu;%lu;%lum
-- endif

-- let g:one_allow_italics = 1
-- let g:enable_bold_font = 1

-- highlight Comment gui=italic
-- highlight Comment cterm=italic

-- let $NVIM_TUI_ENABLE_TRUE_COLOR=1

-- " colorscheme solarized8
-- " colorscheme one
-- " colorscheme solarized8_flat
-- " colorscheme nord

-- if strftime("%H") < 16
--   set background=light
-- else
--   set background=dark
-- endif

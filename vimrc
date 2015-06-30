"NeoBundle Scripts-----------------------------
if has('vim_starting')
  if &compatible
    set nocompatible               " Be iMproved
  endif

  " Required:
  set runtimepath+=/Users/uri/.vim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/Users/uri/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'bling/vim-airline.git'
NeoBundle 'christoomey/vim-tmux-navigator.git'
NeoBundle 'ctrlpvim/ctrlp.vim.git'
NeoBundle 'edkolev/promptline.vim.git'
NeoBundle 'edkolev/tmuxline.vim.git'
NeoBundle 'ervandew/supertab'
NeoBundle 'godlygeek/tabular.git'
NeoBundle 'mattn/emmet-vim.git'
NeoBundle 'rking/ag.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sickill/vim-pasta'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'thoughtbot/vim-rspec.git'
NeoBundle 'tpope/vim-commentary.git'
NeoBundle 'tpope/vim-dispatch.git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired.git'
" NeoBundle 'tpope/vim-sensible'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'rizzatti/dash.vim'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'rhysd/vim-textobj-ruby'
NeoBundle 'Chiel92/vim-autoformat'
NeoBundle 'vitalk/vim-simple-todo'
NeoBundle 'SirVer/ultisnips'
NeoBundle 'farseer90718/vim-taskwarrior'
NeoBundle 'zimbatm/direnv.vim'
NeoBundle 'nelstrom/vim-qargs'
NeoBundle 'pangloss/vim-javascript'
NeoBundle 'fatih/vim-go'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
set nu
set rnu
set nowrap
set hidden
set ts=2 sts=2 sw=2 expandtab
set clipboard=unnamed " Use system clipboard by default
set backspace=indent,eol,start
set mouse=a
set directory=~/tmp
set cursorline
" set smartindent
set autoindent
set splitbelow
set splitright
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
" " set cursorcolumn
set ignorecase
set smartcase
set incsearch
set wildmenu
inoremap jk <Esc>
inoremap jj <Esc>
noremap L $
noremap H ^
noremap Y y$
nnoremap gp `[v`]
nmap <silent> K <Plug>DashSearch
nnoremap <leader>w :setl wrap!<CR>
nnoremap <leader>W :set wrap!<CR>
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <Space> za

let $FISH="~/.config/fish/config.fish"
set laststatus=2
let ruby_fold=1
set foldmethod=syntax
set foldlevel=3
set nofoldenable
" Remove whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

" Required by Gutter
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Colors
" let base16colorspace=256
syntax enable
set background=dark
" colorscheme solarized
" colorscheme base16-atelierforest
" colorscheme base16-ocean
colorscheme base16-solarized
if !empty($LIGHT_THEME)
  set background=light
endif
highlight clear SignColumn

" " Might help with NERDTree?"
let NERDTreeIgnore = ['\.sock$','\.zeus\.sock$']
let g:NERDTreeMouseMode=1

" " RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch rspec {spec}"
let g:rspec_runner = "os_x_iterm"

" " Airline
let g:tmuxline_powerline_separators = 0
let g:airline_powerline_fonts = 1

" " CtrP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth = 10
let g:ctrlp_working_path_mode = 'w'
nnoremap <leader>R :CtrlPTag<cr>
nnoremap <leader>r :CtrlPBufTag %<cr>

" " NERDTree
map <Leader>b :NERDTreeToggle<cr>
map <Leader>B :NERDTreeFind<cr>

" " MultiCursor
let g:multi_cursor_exit_from_insert_mode=0

" direnv
if exists("$EXTRA_VIM")
  for path in split($EXTRA_VIM, ':')
    exec "source ".path
  endfor
endif

" " Send more characters for redraws
set ttyfast

" " " Set this to the name of your terminal that supports mouse codes.
" " " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

" " Tmux
let g:tmuxline_preset = 'crosshair'

" Dash
nmap <silent> <leader>d <Plug>DashSearch

" " Spell checking
if has("autocmd")
  " Enable filetype detection
  filetype plugin on
  filetype plugin indent on
  autocmd BufRead,BufNewFile *.md setlocal spell
  autocmd FileType gitcommit setlocal spell

  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif

" " Ultisnips
let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" " TaskWarrior
let g:task_rc_override = 'rc.defaultwidth=0'
let g:task_default_prompt  = ['description', 'tag' ]
let g:task_log_max         = '100'
let g:task_info_size       = 30

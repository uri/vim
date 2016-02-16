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

NeoBundle "gabebw/vim-spec-runner"
NeoBundle 'airblade/vim-gitgutter'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'chriskempson/base16-vim'
NeoBundle 'christoomey/vim-tmux-navigator.git'
NeoBundle 'ctrlpvim/ctrlp.vim.git'
NeoBundle 'edkolev/tmuxline.vim.git'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'ervandew/supertab'
NeoBundle 'farseer90718/vim-taskwarrior'
NeoBundle 'godlygeek/tabular.git'
NeoBundle 'jiangmiao/auto-pairs'
NeoBundle 'kana/vim-textobj-user'
NeoBundle 'mattn/emmet-vim.git'
NeoBundle 'mbbill/undotree'
NeoBundle 'nelstrom/vim-qargs'
NeoBundle 'rhysd/vim-textobj-ruby'
NeoBundle 'rking/ag.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'sickill/vim-pasta'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'tpope/vim-abolish'
NeoBundle 'tpope/vim-bundler'
NeoBundle 'tpope/vim-commentary.git'
NeoBundle 'tpope/vim-dispatch.git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-projectionist'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-rake'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired.git'
" NeoBundle 'vim-airline/vim-airline'
" NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'vim-ruby/vim-ruby'
NeoBundle 'lambdalisue/vim-gista', {
      \ 'depends': [
      \    'Shougo/unite.vim',
      \    'tyru/open-browser.vim',
      \]}
NeoBundleLazy 'jelera/vim-javascript-syntax', {'autoload':{'filetypes':['javascript']}}

" New Feb 11 2016
NeoBundle 'vim-scripts/ZoomWin'
NeoBundle 'vim-ctrlspace/vim-ctrlspace'
NeoBundle 'roman/golden-ratio'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------
" Speeds up ruby syntax apparently

let g:ruby_path = system('echo $HOME/.rbenv/shims')
let g:ruby_default_path = system('echo $HOME/.rbenv/shims')
let $FISH="~/.config/fish/config.fish"
let ruby_fold=1
let g:ackprg = 'ag --nogroup --nocolor --column'
set laststatus=2
set cryptmethod=blowfish2
" set foldmethod=syntax
set foldlevel=6
set nofoldenable


set nu
set rnu
set nowrap
set hidden
set ts=2 sts=2 sw=2 expandtab
set clipboard=unnamed " Use system clipboard by default
set backspace=indent,eol,start
" set mouse=a
set directory=~/tmp
set cursorline
set autoindent
set splitbelow
set splitright
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
set ignorecase
set smartcase
set incsearch
set wildmenu
" highlight by default
set hls
set regexpengine=1
inoremap jk <Esc>
inoremap jj <Esc>
inoremap <C-L> <Esc>[s1z=`]a
noremap L $
noremap H ^
noremap Y y$
nnoremap gp `[v`]
nnoremap K :noh<cr>
nnoremap <esc> :noh<return><esc>
nnoremap <leader>a :%y<CR>
nnoremap <leader>g :GoldenRatioResize<cr>
nnoremap <leader>G :GoldenRatioToggle<cr>
nnoremap <leader>p :noh<CR>
nnoremap <leader>P :set hls!<CR>
nnoremap <leader>w :setl wrap!<CR>
nnoremap <leader>W :set wrap!<CR>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>ef :e $FISH<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>cr :let @* = expand("%")<cr>
nnoremap <leader>cf :let @* = expand("%:p")<cr>
nnoremap <leader>cc :Dispatch ctags -R .<cr>
nnoremap <leader>ftr :set ft=ruby<cr>
nnoremap <leader>T :Tab <cr>


nnoremap <Space> za
nnoremap <Backspace> /


" Required by Gutter
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Colors
" let base16colorspace=256
syntax enable
syntax sync minlines=200
set t_Co=256
set background=dark

" If using solarized as your term theme aswell
" let g:solarized_termcolors=16
" If NOT using solarized as your term theme aswell
" let g:solarized_termcolors=256
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" colorscheme solarized

" colorscheme base16-ocean
" colorscheme base16-atelierforest
colorscheme base16-flat
" colorscheme base16-ocean

highlight clear SignColumn
highlight Search ctermfg=220
highlight Search ctermbg=4
" highlight Search guibg=NONE guifg=NONE gui=underline
" " RSpec.vim mappings THOTTBOT
" map <Leader>t :call RunCurrentSpecFile()<CR>
" map <Leader>s :call RunNearestSpec()<CR>
" map <Leader>l :call RunLastSpec()<CR>
" map <Leader>a :call RunAllSpecs()<CR>
" let g:rspec_command = "Dispatch rspec {spec}"
" let g:rspec_runner = "os_x_iterm"

" Gabe
map <Leader>t <Plug>RunCurrentSpecFile
map <Leader>s <Plug>RunFocusedSpec
map <Leader>l <Plug>RunMostRecentSpec
let g:spec_runner_dispatcher = 'Dispatch {command}'

" " Airline
" let g:tmuxline_powerline_separators = 0
" let g:airline_powerline_fonts = 1

" " CtrP
let g:ctrlp_max_files=0
let g:ctrlp_max_depth = 10
let g:ctrlp_working_path_mode = 'w'
let g:ctrlp_follow_symlinks=1
let g:ctrlp_show_hidden=1
let g:ctrlp_clear_cache_on_exit=0
let g:ctrlp_custom_ignore = {
\ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|public\/assets\|data\|log\|tmp$',
\ 'file': '\.exe$\|\.so$\|\.dat$'
\ }
nnoremap <leader>R :CtrlPTag<cr>
nnoremap <leader>r :CtrlPBufTag %<cr>

" " NERDTree
" " Might help with NERDTree?"
let NERDTreeIgnore = ['\.sock$','\.zeus\.sock$']
" let g:NERDTreeMouseMode=1
let NERDTreeWinSize=31
let NERDTreeWinPos="left"
let NERDTreeMapHelp="<f1>"
map <Leader>b :NERDTreeToggle<cr>
map <Leader>B :NERDTreeFind<cr>

" " MultiCursor
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>

" direnv
" if exists("$EXTRA_VIM")
"   for path in split($EXTRA_VIM, ':')
"     exec "source ".path
"   endfor
" endif

" " Send more characters for redraws
set ttyfast

" " " Set this to the name of your terminal that supports mouse codes.
" " " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
" set ttymouse=xterm2

" " Tmux
let g:tmuxline_preset = 'full'

" " Spell checking
if has("autocmd")
  " Enable filetype detection
  filetype plugin on
  filetype plugin indent on
  autocmd BufRead,BufNewFile *.md setlocal spell
  autocmd FileType gitcommit setlocal spell

  " Remove whitespace on save
  autocmd BufWritePre * :%s/\s\+$//e

  " Fold only in normal mode
  autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
  autocmd InsertLeave * let &l:foldmethod=w:last_fdm
  " Enable folding for javascript plugin jelera/vim-javascript-syntax
  autocmd FileType javascript call JavaScriptFold()

  " Restore cursor position
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
endif

" " TaskWarrior
let g:task_default_prompt = ['description', 'tag' ]
let g:task_log_max        = '100'
let g:task_info_size      = 30
let g:task_rc_override = 'rc.defaultheight=0'


" Gista
let g:gista#post_private = 1

" Autopairs
let g:AutoPairsFlyMode = 0

" Emmet
let g:user_emmet_leader_key='<C-Z>'

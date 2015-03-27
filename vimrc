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
NeoBundle 'altercation/vim-colors-solarized'
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
NeoBundle 'severin-lemaignan/vim-minimap.git'
NeoBundle 'sickill/vim-pasta'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'thoughtbot/vim-rspec.git'
NeoBundle 'tpope/vim-commentary.git'
NeoBundle 'tpope/vim-dispatch.git'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-rails.git'
NeoBundle 'tpope/vim-sensible.git'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-unimpaired.git'
NeoBundle 'vim-ruby/vim-ruby'

" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

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
set hidden
set formatoptions-=cro " Disable autocomments
set ts=2 sts=2 sw=2 expandtab
set clipboard=unnamed " Use system clipboard by default
set mouse=a
set directory=~/tmp
syntax enable
set background=light
colorscheme solarized
highlight clear SignColumn
set ignorecase
set smartcase
imap jk <Esc>
imap jj <Esc>
noremap L $
noremap H ^
noremap Y y$
inoremap <S-CR> O<Esc>
" Use browser style tab navigation
map <D-S-]> gt
map <D-S-[> gT

" Might help with NERDTree?"
let NERDTreeIgnore = ['\.sock$','\.zeus\.sock$']
let g:NERDTreeMouseMode=3

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>
let g:rspec_command = "Dispatch rspec {spec}"
let g:rspec_runner = "os_x_iterm"

" Airline
let g:tmuxline_powerline_separators = 0
let g:airline_powerline_fonts = 1

" CtrP
nnoremap <leader>r :CtrlPTag<cr>

" NERDTree
map <Leader>b :NERDTreeToggle<cr>
map <Leader>B :NERDTreeFind<cr>

" Send more characters for redraws
set ttyfast

" " Set this to the name of your terminal that supports mouse codes.
" " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
set ttymouse=xterm2

" Tmux 
let g:tmuxline_preset = 'nightly_fox'

" Spell checking
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




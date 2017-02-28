" dein Scripts-----------------------------
if &compatible
  set nocompatible
endif

" Required:
set runtimepath+=~/.vim/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin(expand('~/.vim/dein'))

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')

" Add or remove your plugins here:
call dein#add('airblade/vim-gitgutter')
call dein#add('ervandew/supertab')
call dein#add('blindFS/vim-taskwarrior')
call dein#add('godlygeek/tabular.git')
call dein#add('janko-m/vim-test')
call dein#add('jiangmiao/auto-pairs')
call dein#add('kana/vim-textobj-user')
call dein#add('mattn/emmet-vim.git')
call dein#add('mbbill/undotree')
call dein#add('nelstrom/vim-qargs')
call dein#add('rhysd/vim-textobj-ruby')
call dein#add('rking/ag.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('tpope/vim-abolish')
call dein#add('tpope/vim-commentary.git')
call dein#add('tpope/vim-dispatch.git')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-projectionist')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-unimpaired.git')
call dein#add('christoomey/vim-tmux-navigator.git')
" call dein#add('ctrlpvim/ctrlp.vim.git')
call dein#add('sickill/vim-pasta')
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

" call dein#add('chriskempson/base16-vim')
" call dein#add('justincampbell/vim-eighties')
call dein#add('rakr/vim-one')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
" call dein#add('edkolev/tmuxline.vim.git')

" Language/platform specific plugins
call dein#add('tpope/vim-markdown')
call dein#add('aklt/plantuml-syntax')
call dein#add('elixir-lang/vim-elixir')
call dein#add('slashmili/alchemist.vim')
call dein#add('vim-ruby/vim-ruby')
call dein#add('tpope/vim-rails.git')
call dein#add('tpope/vim-bundler')
call dein#add('tpope/vim-rake')
call dein#add('othree/yajs.vim')
call dein#add('kchmck/vim-coffee-script')

" You can specify revision/branch/tag.
" call dein#add('Shougo/vimshell' |  { 'rev': '3787e5' })

" Required:
call dein#end()
call dein#save_state()

" Required:
filetype plugin indent on

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------


" Speeds up ruby syntax apparently
" let g:ruby_path = system('echo $HOME/.rbenv/shims')
" let g:ruby_default_path = system('echo $HOME/.rbenv/shims')
let $FISH="~/.config/fish/config.fish"
let $ZSH="~/.zshrc"
let ruby_fold=1
let g:ackprg = 'ag -f --nogroup --nocolor --column'
set laststatus=2
" set cryptmethod=blowfish2
set foldmethod=syntax
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
set splitbelow
set splitright
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
set ignorecase
set smartcase
set incsearch
set wildmenu
" Should remove lag from esc
set timeoutlen=1000 ttimeoutlen=0
" highlight by default
set hls
set regexpengine=1
" Load additional vim configuration if .exrc file is present
set exrc

" Search for visually selected text
vnoremap // y/<C-R>"<CR>
inoremap jk <Esc>
inoremap jj <Esc>
inoremap <C-L> <Esc>[s1z=`]a
noremap L g_
noremap H ^
noremap Y y$
nnoremap gp `[v`]
nnoremap <C-w>+ <C-w><bar><C-w>_
" nnoremap K [s1z=<c-o>
nnoremap Q q
nnoremap q :q<cr>
nnoremap <esc> :noh<return><esc>
nnoremap <leader>dm :Dispatch<space>make<space>
nnoremap <leader>a :Ag!<space>""<left>
nnoremap <leader>* yiw:Ag!<space>"<C-r>*"<cr>
nnoremap <leader>y :%y<CR>
nnoremap <leader>p :noh<CR>
nnoremap <leader>P :set hls!<CR>
nnoremap <leader>w :setl wrap!<CR>
nnoremap <leader>W :set wrap!<CR>
nnoremap <leader>ev :e $MYVIMRC<cr>
nnoremap <leader>ef :e $FISH<cr>
nnoremap <leader>ez :e $ZSH<cr>
nnoremap <leader>cv :source $MYVIMRC<cr>
nnoremap <leader>cr :let @* = expand("%")<cr>
nnoremap <leader>cf :let @* = expand("%:p")<cr>
nnoremap <leader>cc :Dispatch ctags -R .<cr>
nnoremap <leader>fte :set ft=elixir<cr>
nnoremap <leader>ftr :set ft=ruby<cr>
nnoremap <leader>ftm :set ft=markdown<cr>
nnoremap <leader>T :Tab <cr>
nnoremap <leader>cl :set bg=light<cr>
nnoremap <leader>cd :set bg=dark<cr>
if has("nvim")
  nnoremap <leader>ha te ssh apist<cr>
  nnoremap <leader>hta :tabe <bar> te ssh apist<cr>
  nnoremap <leader>hs te ssh st<cr>
  nnoremap <leader>hts :tabe <bar> te ssh st<cr>
  nnoremap <leader>hp te ssh hw<cr>
  nnoremap <leader>htp :tabe <bar> te ssh hw<cr>
endif

" Maps Alt-[h,j,k,l] to resizing a window split
nnoremap <Left> 5<C-w><
nnoremap <Up> 3<C-W>+
nnoremap <Right> 5<C-W>>
nnoremap <Down> 3<C-w>-

nnoremap + 3<C-W>+
nnoremap - 5<C-W>>

nnoremap <Backspace> za
nnoremap <C-Space> :


" Required by Gutter
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Colors
syntax enable
syntax sync minlines=200

"Credit joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (has("termguicolors"))
  set termguicolors
endif
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum

set background=dark
let g:one_allow_italics = 1
colorscheme one

" let base16colorspace=256
" colorscheme base16-harmonic16-dark

" If NOT using solarized as your term theme aswell
" let g:solarized_termcolors=256
" let g:solarized_visibility = "high"
" let g:solarized_contrast = "high"
" colorscheme solarized

highlight clear SignColumn
" highlight Search ctermfg=220
" highlight Search ctermbg=4
highlight Search ctermbg=NONE ctermfg=177 cterm=underline,bold
" highlight Search guibg=NONE guifg=NONE gui=underline


" Use zeus stub or rspec
" if filereadable(".zeus.sock")
"   let test#ruby#rspec#executable = 'zeus rspec'
" else
"   let test#ruby#rspec#executable = 'bundle exec rspec'
" endif

" let test#ruby#rspec#executable = 'bundle exec rspec'
let test#ruby#rspec#executable = 'spring rspec'
" let test#strategy = "dispatch"
let test#strategy = "neovim"
nmap <silent> <leader>s :w<cr>:TestNearest<CR>
nmap <silent> <leader>t :w<cr>:TestFile<CR>
nmap <silent> <leader>l :w<cr>:TestLast<CR>
nmap <silent> <leader>g :TestVisit<CR>

" " Airline
" let g:tmuxline_preset = 'full'
" let g:tmuxline_powerline_separators = 0
let g:airline_powerline_fonts = 1
let g:airline_theme='one'

" " CtrP
" let g:ctrlp_max_files=0
" let g:ctrlp_max_depth = 10
" let g:ctrlp_working_path_mode = 'w'
" let g:ctrlp_follow_symlinks=1
" let g:ctrlp_show_hidden=1
" let g:ctrlp_clear_cache_on_exit=0
" let g:ctrlp_custom_ignore = {
" \ 'dir':  '\.git$\|\.hg$\|\.svn$\|\.yardoc\|public\/images\|public\/system\|public\/assets\|log\|tmp$\|deps$\|_build$\|node_modules$\|priv$\|doc$',
" \ 'file': '\.exe$\|\.so$\|\.dat$\|.DS_Store'
" \ }

" FZF
nnoremap <leader>R :Tags<cr>
nnoremap <leader>r :BTags<cr>
nnoremap <leader>D :Lines<cr>
nnoremap <Space> :BLines<cr>
nnoremap <C-p> :FZF<cr>
nnoremap <C-f> :Buffers<cr>

" " NERDTree
" " Might help with NERDTree?"
let NERDTreeIgnore = ['\.sock$','\.zeus\.sock$']
" let g:NERDTreeMouseMode=1
let NERDTreeWinSize=31
let NERDTreeWinPos="left"
let NERDTreeMapHelp="Q"
map <Leader>b :NERDTreeToggle<cr>
map <Leader>B :NERDTreeFind<cr>

" " MultiCursor
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>

" Called once right before you start selecting multiple cursors
function! Multiple_cursors_before()
  set foldmethod=manual
endfunction

" Called once only when the multiple selection is cancel
function! Multiple_cursors_after()
  set foldmethod=syntax
endfunction

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


" " Spell checking
if has("autocmd")
  " Enable filetype detection
  filetype on
  filetype plugin on
  autocmd BufRead,BufNewFile *.md setlocal spell
  autocmd BufRead,BufNewFile *.ron setlocal ft=ruby
  autocmd FileType gitcommit setlocal spell

  " Remove whitespace on save
  autocmd BufWritePre * :%s/\s\+$//e

  " Fold only in normal mode
  autocmd InsertEnter * let w:last_fdm=&foldmethod | setlocal foldmethod=manual
  autocmd InsertLeave * let &l:foldmethod=w:last_fdm
  " Enable folding for javascript plugin jelera/vim-javascript-syntax
  " autocmd FileType javascript call JavaScriptFold()

  " Restore cursor position
  let blacklist = ['gitcommit']
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") && index(blacklist,  &ft) < 0|
    \   exe "normal! g`\"zz" |
    \ endif

  " Change the quick fix to adjust it's height based on content up to a
  " maximum
  au FileType qf call AdjustWindowHeight(3, 16)
  function! AdjustWindowHeight(minheight, maxheight)
    exe max([min([line("$"), a:maxheight]), a:minheight]) . "wincmd _"
  endfunction
endif

if has("nvim")
  tnoremap jk <C-\><C-n>G$?➜<enter>$
endif

" " TaskWarrior
let g:task_default_prompt = ['description', 'priority' ]
let g:task_log_max        = '100'
let g:task_info_size      = 30
let g:task_rc_override = 'rc.defaultheight=0'
" Highlight and cursor line breaks for some reason
let g:task_highlight_field = 0



" Gista
let g:gista#post_private = 1

" Autopairs
let g:AutoPairsFlyMode = 0

" Emmet
let g:user_emmet_leader_key='<C-Z>'

let g:ctrlp_abbrev = {
  \ 'gmode': 'i',
  \ 'abbrevs': [
    \ {
      \ 'pattern': ' ',
      \ 'expanded': '',
      \ 'mode': 'pfrz',
    \ },
    \ ]
  \ }

" Macros


let @b='Obyebug:wj'
let @l='Hyei:yss)iletA { create(:pl'
let @k='Hilet(:wdehPf=xxv$hS{'
let @q='nhdHt{dhdl%lD@q'

" Abbreviations
iabbr clog console.log()<left>

" Ensure no sketchy autocmds are ran
set secure


" Bullet journal

function! CreateLog()
  -1put =strftime('%b %d, %Y')
  let filename = "journal-" . strftime("%m-%d-%y") . ".md"
  execute 'write ' fnameescape(filename)
endfunction

" Time abbreviations
iab <expr> ddt strftime('%b %d, %Y')
iab <expr> ddt strftime('%b %d, %Y')
iab <expr> tdt "(" . strftime('%T') . ")"


" Turn off [] autopairs for markdown
au Filetype markdown let b:AutoPairs = {'(':')', '{':'}',"'":"'",'"':'"', '`':'`'}

" Testing out cursor autocmd
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END

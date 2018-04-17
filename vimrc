" dein Scripts-----------------------------
"
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
" call dein#add('ervandew/supertab')
call dein#add('blindFS/vim-taskwarrior')
call dein#add('godlygeek/tabular.git')
call dein#add('janko-m/vim-test')
" call dein#add('jiangmiao/auto-pairs')
call dein#add('kana/vim-textobj-user')
call dein#add('kana/vim-textobj-indent')
call dein#add('rhysd/vim-textobj-ruby')
call dein#add('michaeljsmith/vim-indent-object')
call dein#add('mattn/emmet-vim.git')
call dein#add('mbbill/undotree')
call dein#add('nelstrom/vim-qargs')
" call dein#add('rking/ag.vim')
call dein#add('mileszs/ack.vim')
call dein#add('scrooloose/nerdtree')
call dein#add('terryma/vim-multiple-cursors')
call dein#add('tpope/vim-abolish')
call dein#add('tpope/vim-commentary.git')
call dein#add('tpope/vim-dispatch.git')
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-rhubarb')
call dein#add('tpope/vim-projectionist')
call dein#add('tpope/vim-repeat')
call dein#add('tpope/vim-surround')
call dein#add('tpope/vim-unimpaired.git')
call dein#add('tpope/vim-dadbod')
" call dein#add('christoomey/vim-tmux-navigator.git')
" call dein#add('ctrlpvim/ctrlp.vim.git')
call dein#add('sickill/vim-pasta')
call dein#add('junegunn/fzf', { 'build': './install --all', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })
call dein#add('neomake/neomake')
call dein#add('sbdchd/neoformat')
call dein#add('majutsushi/tagbar')
" call dein#add('roman/golden-ratio')
call dein#add('git-time-metric/gtm-vim-plugin')
call dein#add('machakann/vim-highlightedyank')

" call dein#add('chriskempson/base16-vim')
" call dein#add('justincampbell/vim-eighties')
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
" call dein#add('rakr/vim-one')
call dein#add('lifepillar/vim-solarized8')

" Language/platform specific plugins
call dein#add('tpope/vim-markdown')
call dein#add('aklt/plantuml-syntax')
call dein#add('elixir-lang/vim-elixir')
call dein#add('slashmili/alchemist.vim')
call dein#add('vim-ruby/vim-ruby')
" call dein#add('tpope/vim-rails.git')
call dein#add('tpope/vim-bundler')
call dein#add('tpope/vim-rake')
call dein#add('othree/yajs.vim')
call dein#add('kchmck/vim-coffee-script')
call dein#add('ElmCast/elm-vim')
call dein#add('mpyatishev/vim-sqlformat')
call dein#add('justinmk/vim-sneak')
" call dein#add('Shougo/deoplete.nvim')
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

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
" Silver Surfer
" let g:ackprg = 'ag -f --nogroup --nocolor --column'
" Ripgrep
let g:ackprg = 'rg --vimgrep --no-heading -i'
" Fenced syntax highlighting
let g:markdown_fenced_languages = ['html', 'vim', 'ruby', 'python', 'bash=sh', 'javascript', 'elixir', 'sh']
set laststatus=2
" set cryptmethod=blowfish2
set foldmethod=syntax
set foldlevel=6
set nofoldenable


set nu
set rnu
set nowrap
set hidden " Do not error when hidding an unsaved buffer
set ts=2 sts=2 sw=2 expandtab
set clipboard=unnamedplus " Use system clipboard by default
set backspace=indent,eol,start
" set mouse=a
set directory=~/tmp
set cursorline
set splitbelow
set splitright
set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h14
" set ignorecase
set smartcase
set incsearch
set wildmenu
" Should remove lag from esc
set timeoutlen=1000 ttimeoutlen=0
" highlight by default
set hls
set regexpengine=1
" Remove _ as a word delimeter
" set iskeyword-=_
" Load additional vim configuration if .exrc file is present
set exrc

" Preview substititions
" nosplit also works
set inccommand=split

" Search for visually selected text
vnoremap // y/<C-R>"<CR>
inoremap jk <Esc>
inoremap jj <Esc>
noremap L g_
noremap H ^
noremap Y y$
nnoremap <C-w>+ <C-w><bar><C-w>_


" nnoremap K [s1z=<c-o>
nnoremap Q q
nnoremap q :bd<cr>
nnoremap <esc> :noh<return><esc>
nnoremap <leader>dm :Dispatch<space>make<space>
nnoremap <leader>a :Ack!<space>""<left>
" nnoremap <leader>* yiw:Ack!<space>"<C-r>*"<cr>
nnoremap <leader>* g*``:Ack!<space>"<C-r>/"<cr>
nnoremap <leader>yy :%y<CR>
nnoremap <leader>yf :let @*=expand("%")<cr>
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
nnoremap <leader>g :Gst<cr>
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
command! Zoomwindow :wincmd | <bar> wincmd _<cr>
nnoremap <leader>z Zoomwindow<cr>


nnoremap + 3<C-W>+
nnoremap - 5<C-W>>

nnoremap <Backspace> za
nnoremap <C-Space> :
vnoremap <C-Space> :

" Change # to not jump immediately
nnoremap # *``

" Terminal quick mappings
" Ruby
tnoremap fbe find_by(email:"")<left><left>
tnoremap fbu find_by(uid:"")<left><left>
tnoremap zusa UploadSim.all(async:true)



" Required by Gutter
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Colors
syntax enable
syntax sync minlines=200

if (has("termguicolors"))
  set termguicolors
endif
set t_8b=[48;2;%lu;%lu;%lum
set t_8f=[38;2;%lu;%lu;%lum

let g:one_allow_italics = 1
let g:enable_bold_font = 1

highlight Comment gui=italic
highlight Comment cterm=italic

let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=light
" colorscheme one
colorscheme solarized8

" highlight clear SignColumn
" highlight Search guibg='yellow' guifg='black'


" Use zeus stub or rspec
" if filereadable(".zeus.sock")
"   let test#ruby#rspec#executable = 'zeus rspec'
" else
"   let test#ruby#rspec#executable = 'bundle exec rspec'
" endif

" let test#ruby#rspec#executable = 'bundle exec rspec'
let test#ruby#rspec#executable = 'bundle exec rspec'
let test#strategy = "dispatch"
" let test#strategy = "neovim"
" let test#strategy = "neomake"
" Do not close the screen on success
let g:test#preserve_screen = 1
nmap <silent> <leader>s :w<cr>:TestNearest<CR>
nmap <silent> <leader>t :w<cr>:TestFile<CR>
nmap <silent> <leader>l :w<cr>:TestLast<CR>
" nmap <silent> <leader>l :w<cr>:TestVisit<CR>

" " Airline
let g:airline_powerline_fonts = 1
" let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='alduin'
let g:airline#extensions#tabline#fnamemod = ':.'
let g:airline#extensions#default#section_truncate_width = {
    \ 'a': 0,
    \ 'b': 180,
    \ 'c': 0,
    \ 'x': 130,
    \ 'y': 130,
    \ 'z': 0,
    \ 'warning': 40,
    \ 'error': 40,
    \ }

" FZF
nnoremap <leader>R :Tags<cr>
nnoremap <leader>r :BTags<cr>
nnoremap <leader>D :Lines<cr>
nnoremap <Space> :BLines<cr>
nnoremap <C-p> :FZF<cr>
nnoremap <C-f> :Buffers<cr>
nnoremap <C-g> :GFiles?<cr>
nnoremap <C-Space> :History:<cr>

" Mapping selecting mappings
" nmap <leader><tab> <plug>(fzf-maps-n)
" xmap <leader><tab> <plug>(fzf-maps-x)
" omap <leader><tab> <plug>(fzf-maps-o)

" Insert mode completion
" imap <c-x><c-k> <plug>(fzf-complete-word)
" imap <c-x><c-f> <plug>(fzf-complete-path)
" imap <c-x><c-j> <plug>(fzf-complete-file-ag)
" imap <c-x><c-l> <plug>(fzf-complete-line)



" Advanced customization using autoload functions
" inoremap <expr> <c-x><c-k> fzf#vim#complete#word({'left': '15%'})

" " NERDTree
let NERDTreeIgnore = ['\.sock$','\.zeus\.sock$']
let g:NERDTreeMouseMode=1
let NERDTreeWinSize=31
let NERDTreeWinPos="left"
let NERDTreeMapHelp="Q"
map <Leader>b :NERDTreeToggle<cr>
map <Leader>B :NERDTreeFind<cr>

" Default tree explorer
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
" augroup ProjectDrawer
"   autocmd!
"   autocmd VimEnter * :Vexplore
" augroup END

" " MultiCursor
let g:multi_cursor_exit_from_insert_mode=0
let g:multi_cursor_exit_from_visual_mode=0
let g:multi_cursor_quit_key='<C-c>'
nnoremap <C-c> :call multiple_cursors#quit()<CR>

" Called once only when the multiple selection is cancel
function! Multiple_cursors_before()
  set foldmethod=manual
  let g:deoplete#disable_auto_complete = 1
endfunction
function! Multiple_cursors_after()
  let g:deoplete#disable_auto_complete = 0
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

  " Fold in CoffeeScript
  autocmd BufNewFile,BufReadPost *.coffee setl foldmethod=indent nofoldenable
  " Enable folding for javascript plugin jelera/vim-javascript-syntax
  " autocmd FileType javascript call JavaScriptFold()

  " Restore cursor position
  " let blacklist = ['gitcommit']
  " autocmd BufReadPost *
  "   \ if line("'\"") > 1 && line("'\"") <= line("$") && index(blacklist,  &ft) < 0|
  "   \   exe "normal! g`\"zz" |
  "   \ endif

  autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

  " Handlebar to HTML
  autocmd BufRead,BufNewFile *.hbs set filetype=html
endif


if has("nvim")
  tnoremap jk <C-\><C-n>G$?>\\|λ<enter>$<esc>
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
let @e='^yeea: "'

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
iab <expr> ddd strftime('%b %d, %Y')
iab <expr> dtt "(" . strftime('%T') . ")"


" Turn off [] autopairs for markdown
au Filetype markdown let b:AutoPairs = {'(':')', '{':'}',"'":"'",'"':'"', '`':'`'}

" Testing out cursor autocmd
augroup CursorLine
  au!
  au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
  au WinLeave * setlocal nocursorline
augroup END


" Neomake
autocmd! BufWritePost * Neomake
autocmd! BufReadPost * Neomake
" autocmd! BufWritePost,TextChanged,InsertLeave *.js silent Neomake

let g:neomake_ruby_enabled_makers = ['rubocop']
let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_highlight_lines=1

" Ripgrep
" --column: Show column number
" --line-number: Show line number
" --no-heading: Do not show file headings in results
" --fixed-strings: Search term as a literal string
" --ignore-case: Case insensitive search
" --no-ignore: Do not respect .gitignore, etc...
" --hidden: Search hidden files and folders
" --follow: Follow symlinks
" --glob: Additional conditions for search (in this case ignore everything in the .git/ folder)
" --color: Search color options
" command! -bang -nargs=* Find call fzf#vim#grep('rg --column --line-number --no-heading --fixed-strings --ignore-case --no-ignore --hidden --follow --glob "!.git/*" --color "always" '.shellescape(<q-args>), 1, <bang>0)

" Quick Neovim term
nnoremap <C-w>_ :Ahte<space>
nnoremap <C-w><bar> :Avte<space>

function! AsyncTermHorizontal( cmd )
  new
  call termopen(a:cmd)
  wincmd p
endfunction

function! AsyncTermVertical( cmd )
  vnew
  call termopen(a:cmd)
  wincmd p
endfunction

command! -nargs=+ Ahte call AsyncTermHorizontal('<args>')
command! -nargs=+ Avte call AsyncTermVertical('<args>')

function! AsyncTermHorizontal( cmd )
  new
  call termopen(a:cmd)
  wincmd p
endfunction

function! AsyncTermVertical( cmd )
  vnew
  call termopen(a:cmd)
  wincmd p
endfunction

command! -nargs=+ Ahte call AsyncTermHorizontal('<args>')
command! -nargs=+ Avte call AsyncTermVertical('<args>')

command! Zoomwindow :wincmd | <bar> wincmd _
nnoremap <leader>z :Zoomwindow<cr>

" Neocomplete Elm
" call neocomplete#util#set_default_dictionary(
"   \ 'g:neocomplete#sources#omni#input_patterns',
"   \ 'elm',
"   \ '\.')

" Neoformat
let g:neoformat_try_formatprg = 1

" autocmd FileType javascript setlocal formatprg=prettier\ --stdin\ --single-quote\ --trailing-comma\ es5\ --no-semi
augroup fmt
  autocmd FileType javascript,scss,css setlocal formatprg=npm\ run\ -s\ prettier
  autocmd BufWritePre *.js,*.scss,*.css silent Neoformat
augroup END
" autocmd BufWritePre,TextChanged,InsertLeave *.js silent Neoformat


" TagbarToggle
nmap <F8> :TagbarToggle<CR>


" Deoplete
let g:deoplete#enable_at_startup = 1


command! -nargs=+ Rec execute 'silent ! nrec <args>'

command! -range PSQLExec execute '<line1>,<line2>.w !psql ' . script_database
nnoremap <leader>p :PSQLExec<cr>
vnoremap <leader>p :PSQLExec<cr>


" Protect large files from sourcing and other overhead.
" Files become read only
if !exists("my_auto_commands_loaded")
  let my_auto_commands_loaded = 1
  " Large files are > 10M
  " Set options:
  " eventignore+=FileType (no syntax highlighting etc
  " assumes FileType always on)
  " noswapfile (save copy of file)
  " bufhidden=unload (save memory when other file is viewed)
  " buftype=nowrite (file is read-only)
  " undolevels=-1 (no undo possible)
  let g:LargeFile = 1024 * 1024 * 1
  augroup LargeFile
    autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
    augroup END
  endif


" Runtime toggle prettier/neoformat
function! TogglePrettier()
    if !exists('#fmt#BufWritePre')
        augroup fmt
          autocmd!
          autocmd BufWritePre * silent Neoformat
        augroup END
    else
        augroup fmt
          autocmd!
        augroup END
    endif
endfunction

command! TogglePrettier :call TogglePrettier()<cr>


" GTM
let g:gtm_plugin_status_enabled = 1
function! AirlineInit()
  if exists('*GTMStatusline')
    call airline#parts#define_function('gtmstatus', 'GTMStatusline')
    let g:airline_section_b = airline#section#create([g:airline_section_b, ' ', '[', 'gtmstatus', ']'])
  endif
endfunction
autocmd User AirlineAfterInit call AirlineInit()

inoremap <esc> <nop>

autocmd Bufenter *.js,*.coffee set suffixesadd=.js,.cofeee,.hbs | setlocal path+=,,

inoremap <Backspace> <nop>

" Tmux navigator
" let g:tmux_navigator_no_mappings = 1

" nnoremap <silent> <C-S-h> :TmuxNavigateLeft<cr>
" nnoremap <silent> <C-S-k> :TmuxNavigateDown<cr>
" nnoremap <silent> <C-S-j> :TmuxNavigateUp<cr>
" nnoremap <silent> <C-S-l> :TmuxNavigateRight<cr>
" nnoremap <silent> {Previous-Mapping} :TmuxNavigatePrevious<cr>

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'airblade/vim-gitgutter'
Plug 'godlygeek/tabular'
" Plug 'janko-m/vim-test'
Plug 'mileszs/ack.vim'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
" Plug 'terryma/vim-multiple-cursors' 
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-unimpaired'
Plug 'justinmk/vim-sneak'
Plug 'jiangmiao/auto-pairs'
" Plug 'sickill/vim-pasta'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() }  }
Plug 'junegunn/fzf.vim', { 'depends': 'fzf' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'machakann/vim-highlightedyank'
" Plug 'rakr/vim-one'
Plug 'lifepillar/vim-solarized8'
" Plug 'arcticicestudio/nord-vim'
" Plug 'junegunn/vim-peekaboo'
Plug 'powerman/vim-plugin-AnsiEsc'

" Language/platform specific plugins
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'kchmck/vim-coffee-script', { 'for': 'coffeescript' }
Plug 'mustache/vim-mustache-handlebars', { 'for': 'hbs' }
" Plug 'othree/yajs.vim'
Plug 'leafgarland/typescript-vim', { 'for': 'typescript' }
Plug 'posva/vim-vue', { 'for': 'vue' }
Plug 'pangloss/vim-javascript', { 'for': 'js' }
" Plug 'fatih/vim-go', { 'for': 'go' }

" Initialize plugin system
call plug#end()


" Speeds up ruby syntax apparently
let $ZSH="~/.zshrc"
" Ripgrep
let g:ackprg = 'rg --vimgrep --no-heading -i'
" Fenced syntax highlighting
let g:markdown_fenced_languages = ['html', 'vim', 'ruby', 'python', 'bash=sh', 'javascript', 'sh']
let mapleader='_'
set laststatus=2
" set cryptmethod=blowfish2
set nu
set rnu
set nowrap
set hidden " Do not error when hidding an unsaved buffer
set ts=2 sts=2 sw=2 expandtab
set backspace=indent,eol,start
" set mouse=a
set directory=~/tmp
set cursorline
set splitbelow
set splitright
" MacVim
" set ignorecase
set smartcase
set incsearch
set wildmenu
" Should remove lag from esc
set timeoutlen=1000 ttimeoutlen=0
" highlight by default
set hls
" Remove _ as a word delimeter
" set iskeyword-=_
" Load additional vim configuration if .exrc file is present
set exrc

set sidescroll=50

" Preview substititions
" nosplit also works
if has("nvim")
  set inccommand=split
  set clipboard=unnamedplus " Use system clipboard by default
else
  set clipboard=unnamed " Use system clipboard by default
endif

" Ensure no sketchy autocmds are ran
set secure

" Allow mouse control
set mouse=a

" Do not search in folded regions
set fdo-=search

" Search for visually selected text
vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR>
" inoremap jk <Esc>
" inoremap jj <Esc>
noremap L g_
noremap H ^
noremap Y y$
nnoremap <C-w>+ <C-w><bar><C-w>_

" Use <C-e> in insesrt mode to move to the end of the line
inoremap <C-e> <End>
inoremap <C-j> <C-o>o

let g:python3_host_prog="$HOME/dev/plugins/neovim-python3/bin/python3"

" Disable backspace in insert mode to form good habits
" inoremap <Backspace> <nop>
" Disable esc to exit insert mode
" inoremap <esc> <nop>

" nnoremap K [s1z=<c-o>
nnoremap Q q
nnoremap q :bd<cr>
nnoremap <silent> <esc> <esc>:noh<bar>:ccl<cr>
nnoremap <leader>dm :Dispatch<space>make<space>
nnoremap <leader>a :Ack!<space>""<left>
nnoremap <leader>sf :exe 'Ack! ' . expand('%:t:r')<cr>
nnoremap <leader>ss :exe 'Ack! ' . expand('<cword>')<cr>
nnoremap <leader>yy :%y<CR>
nnoremap <leader>yF :let @*=expand("%")<cr>
nnoremap <leader>yf :let @*=expand("%") . ":" . line(".")<cr>
nnoremap <leader>ye :let @*=system("epoch -n")<cr>
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
nnoremap <leader>ct :Dispatch ctags -R .<cr>
" nnoremap <leader>fte :set ft=elixir<cr>
" nnoremap <leader>ftr :set ft=ruby<cr>
" nnoremap <leader>ftm :set ft=markdown<cr>
" nnoremap <leader>fts :set ft=sql<cr>
nnoremap <leader>T :Tab <cr>
nnoremap <leader>cl :set bg=light<cr>
nnoremap <leader>cd :set bg=dark<cr>
nnoremap <leader>g :Git blame<cr>
nnoremap <leader>db :%DB g:prod<cr>
nnoremap <leader>u `]v[`gU`>
if has("nvim")
  " nnoremap <leader>ha :te ssh apist<cr>
  " nnoremap <leader>hta :tabe <bar> te ssh apist<cr>
  " nnoremap <leader>hs :te ssh st<cr>
  " nnoremap <leader>hts :tabe <bar> te ssh st<cr>
  " nnoremap <leader>hp :te ssh hw<cr>
  " nnoremap <leader>htp :tabe <bar> te ssh hw<cr>
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
nnoremap <silent> # :let @/=expand('<cword>') <bar> set hls <cr>
nnoremap <leader># :%s///g<left><left>
vnoremap <leader># :s///g<left><left>
" nnoremap <silent> # :let @/= '\<' . expand('<cword>') . '\>' <bar> set hls <cr>

" Terminal quick mappings

function! AsyncTermHorizontal()
  new
  call termopen("zsh")
endfunction

function! AsyncTermVertical()
  vnew
  call termopen("zsh")
endfunction

command! Ahte call AsyncTermHorizontal()
command! Avte call AsyncTermVertical()

" Quick Neovim term
nnoremap <C-w>z <C-w><bar><C-w>_
nnoremap <C-w>_ :Ahte<cr>
nnoremap <C-w><bar> :Avte<cr>

if has("nvim")

  function! s:term_open()
    nnoremap <buffer> x :Ahte zsh<cr>
    nnoremap <buffer> c :Avte zsh<cr>
    setlocal nonumber
    setlocal nornu
    startinsert
  endfunction

  augroup terminal
          autocmd!
          autocmd TermOpen * call s:term_open()
          autocmd TermClose * if getline('$') == '[Process exited 0]' | close | endif
  augroup end


  " Breaks escaping out of fzf
  " tnoremap <Esc> <C-\><C-n>
endif


" Required by Gutter
if &shell =~# 'fish$'
  set shell=/bin/bash
endif

" Colors
syntax enable
syntax sync minlines=200

if (has("termguicolors"))
  let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors

  " set termguicolors
  " set t_8b=[48;2;%lu;%lu;%lum
  " set t_8f=[38;2;%lu;%lu;%lum
endif

let g:one_allow_italics = 1
let g:enable_bold_font = 1

highlight Comment gui=italic
highlight Comment cterm=italic

" let $NVIM_TUI_ENABLE_TRUE_COLOR=1
set background=dark
" colorscheme one 
colorscheme solarized8_flat
" colorscheme nord

" highlight clear SignColumn
" highlight Search guibg='yellow' guifg='black'
" highlight Search guibg='black' guifg='yellow'
" hi Search guibg=yellow guifg=black


" " " Set this to the name of your terminal that supports mouse codes.
" " " Must be one of: xterm, xterm2, netterm, dec, jsbterm, pterm
" set ttymouse=xterm2

if has("autocmd")
  " Enable filetype detection
  filetype on
  filetype plugin on
  augroup urigroup
    autocmd!
    autocmd BufRead,BufNewFile *.md setlocal spell
    autocmd BufRead,BufNewFile *.ron setlocal ft=ruby
    autocmd FileType gitcommit setlocal spell
    autocmd FileType markdown setlocal tw=80
    autocmd filetype crontab setlocal nobackup nowritebackup
    autocmd filetype go setlocal tabstop=8 softtabstop=0 noexpandtab shiftwidth=8 smarttab

    " Remove whitespace on save
    " autocmd BufWritePre * :%s/\s\+$//e

    " Handlebar to HTML
    " autocmd BufRead,BufNewFile *.hbs set filetype=html

    " Use gf to open JavaScript imports
    autocmd Bufenter *.ts,*.js,*.coffee set suffixesadd=.js,.cofeee,.hbs | setlocal path+=,,
  augroup END
endif


" Macros
let @b='Obyebug:wj'
let @l='yiwilet(:A) { create(:") }H'
let @k='^ilet(:wea)f=xi{A }'
let @q='nhdHt{dhdl%lD@q'
let @e='^yeea: "'

" Go test
function! s:go_test_case()
  let s:old_search = @/
  let @/='func Test'

  execute "norm! Nftl\"gye\<c-o>"

  let @/= s:old_search

  execute "!go test ./%:h -run " . @g
endfunction

function! s:go_test_all()
  execute "!go test ./%:h"
endfunction

command! GoTest call s:go_test_case()
command! GoTestAll call s:go_test_all()



" Abbreviations
iabbr clog console.log()<left>
iabbr flog fmt.Println("")<left><left>
iabbr fpr fmt.Printf("\n",)<left><left><left><left><left>
iabbr gomain package<space>main<cr><cr>func<space>main()<space>{<cr>}

" Time abbreviations
iab <expr> ddd strftime('%b %d, %Y')
iab <expr> dtt "(" . strftime('%T') . ")"

" Custom vimscript

" Bullet journal
function! CreateLog()
  -1put =strftime('%b %d, %Y')
  let filename = "journal-" . strftime("%m-%d-%y") . ".md"
  execute 'write ' fnameescape(filename)
endfunction

command! Zoomwindow :wincmd | <bar> wincmd _
nnoremap <leader>z :Zoomwindow<cr>

" auto pairs
let g:AutoPairsFlyMode = 0
let g:AutoPairsShortcutFastWrap = '<C-l>'

" Use zeus stub or rspec
" if filereadable(".zeus.sock")
"   let test#ruby#rspec#executable = 'zeus rspec'
" else
"   let test#ruby#rspec#executable = 'bundle exec rspec'
" endif

let test#ruby#rspec#executable = 'bundle exec rspec'
let test#strategy = "dispatch"
" Do not close the screen on success
let g:test#preserve_screen = 1
" nmap <silent> <leader>s :w<cr>:TestNearest<CR>
" nmap <silent> <leader>t :w<cr>:TestFile<CR>
" nmap <silent> <leader>l :w<cr>:TestLast<CR>
" nmap <silent> <leader>l :w<cr>:TestVisit<CR>
nmap <silent> <leader>s :w<cr>:GoTestFunc<CR>
nmap <silent> <leader>t :w<cr>:GoTest<CR>
nmap <silent> <leader>T :w<cr>:GoTestAll<CR>
" nmap <silent> <leader>l :w<cr>:TestLast<CR>

" " Airline
" let g:airline_powerline_fonts = 1
" " let g:airline#extensions#tabline#enabled = 1
" let g:airline_theme='alduin'
" let g:airline#extensions#tabline#fnamemod = ':.'
" let g:airline#extensions#default#section_truncate_width = {
"     \ 'a': 0,
"     \ 'b': 180,
"     \ 'c': 0,
"     \ 'x': 130,
"     \ 'y': 130,
"     \ 'z': 0,
"     \ 'warning': 40,
"     \ 'error': 40,
"     \ }

" FZF
nnoremap <leader>R :Tags<cr>
nnoremap <leader>r :BTags<cr>
nnoremap <leader>D :Lines<cr>
nnoremap <Space> :BLines<cr>
nnoremap <C-p> :FZF<cr>
nnoremap <C-f> :Buffers<cr>
nnoremap <C-g> :GFiles?<cr>
nnoremap <M-Space> :History:<cr>
nnoremap <C-Space> :Commands<cr>
" command! -bang -nargs=? GFiles call fzf#vim#gitfiles(<q-args>, {'options': '--no-preview'}, <bang>0)
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
" let g:multi_cursor_exit_from_insert_mode=0
" let g:multi_cursor_exit_from_visual_mode=0
" let g:multi_cursor_quit_key='<C-c>'
" nnoremap <C-c> :call multiple_cursors#quit()<CR>
" nnoremap <silent> <M-j> :MultipleCursorsFind <C-R>/<CR>
" vnoremap <silent> <M-j> :MultipleCursorsFind <C-R>/<CR>
"

" Vim Multi
let g:VM_highlight_matches = 'underline'
let g:VM_maps = {}
let g:VM_maps["Undo"] = 'u'
let g:VM_maps["Redo"] = '<C-r>'
" Can use Select instead of Add
let g:VM_maps["Add Cursor Down"] = '<C-j>'
let g:VM_maps["Add Cursor Up"] = '<C-k>'

let g:VM_theme = 'iceblue'

" Sneak
" let g:sneak#label=1

" Called once only when the multiple selection is cancel
" function! Multiple_cursors_before()
"   set foldmethod=manual
"   let g:deoplete#disable_auto_complete = 1
" endfunction
" function! Multiple_cursors_after()
"   let g:deoplete#disable_auto_complete = 0
"   set foldmethod=syntax
" endfunction


" " TaskWarrior
" let g:task_default_prompt = ['description', 'priority' ]
" let g:task_log_max        = '100'
" let g:task_info_size      = 30
" let g:task_rc_override = 'rc.defaultheight=0'
" " Highlight and cursor line breaks for some reason
" let g:task_highlight_field = 0



" Turn off [] autopairs for markdown
" au Filetype markdown let b:AutoPairs = {'(':')', '{':'}',"'":"'",'"':'"', '`':'`'}

" Testing out cursor autocmd
" augroup CursorLine
"   au!
"   au VimEnter,WinEnter,BufWinEnter * setlocal cursorline
"   au WinLeave * setlocal nocursorline
" augroup END

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
  let g:LargeFile = 1024 * 1024 * 100
  augroup LargeFile
    au!
    " autocmd BufReadPre * let f=expand("<afile>") | if getfsize(f) > g:LargeFile | set eventignore+=FileType | setlocal noswapfile bufhidden=unload buftype=nowrite undolevels=-1 | else | set eventignore-=FileType | endif
  augroup END
endif


" Git gutter
nmap <Leader>hf <Plug>GitGutterFold







" COC
" if hidden is not set, TextEdit might fail.
set hidden

" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Better display for messages
set cmdheight=2

" You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300

" don't give |ins-completion-menu| messages.
set shortmess+=c

" always show signcolumns
set signcolumn=yes


autocmd FileType vue,typescript let b:coc_root_patterns = ['tsconfig.json', 'vue.config.js']

inoremap <silent><expr> <C-p>
      \ pumvisible() ? "\<C-p>" :
      \ coc#refresh()


" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
" nmap <silent> gd :call CocAction('jumpDefinition', 'tabe')<CR>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gs :call CocAction('jumpDefinition', 'vsplit')<CR>
nmap <silent> gD <Plug>(coc-declaration)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f <Plug>(coc-float-hide)
nmap <leader>f <Plug>(coc-float-hide)


augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
" xmap <leader>a  <Plug>(coc-codeaction-selected)
" nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>xx  <Plug>(coc-codeaction)
nmap <leader>xl  <Plug>(coc-codelens-action)
" Fix autofix problem of current line
nmap <leader>xf  <Plug>(coc-fix-current)

" Create mappings for function text object, requires document symbols feature of
" languageserver.

xmap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap if <Plug>(coc-funcobj-i)
omap af <Plug>(coc-funcobj-a)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
" nmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <TAB> <Plug>(coc-range-select)
" xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
" set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Using CocList
" Show all diagnostics
nnoremap <silent> <leader>ca  :<C-u>CocList --normal diagnostics<cr>
" Manage extensions
nnoremap <silent> <leader>ce  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent> <leader>cp  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent> <leader>co  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent> <leader>cs  :<C-u>CocList -I symbols<cr>
" Do default action for next item.
nnoremap <silent> <leader>cj  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent> <leader>ck  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent> <leader>cc  :<C-u>CocListResume<CR>


" " Use <C-l> for trigger snippet expand.
" imap <C-l> <Plug>(coc-snippets-expand)

" " Use <C-j> for select text for visual placeholder of snippet.
" vmap <C-j> <Plug>(coc-snippets-select)

" " Use <C-j> for jump to next placeholder, it's default of coc.nvim
" let g:coc_snippet_next = '<c-j>'

" " Use <C-k> for jump to previous placeholder, it's default of coc.nvim
" let g:coc_snippet_prev = '<c-k>'

" " Use <C-j> for both expand and jump (make expand higher priority.)
" imap <C-j> <Plug>(coc-snippets-expand-jump)

autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

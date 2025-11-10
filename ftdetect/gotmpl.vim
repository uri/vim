autocmd BufNewFile,BufRead */templates/*.yaml,*/templates/*.yml,*helm*/*.yaml,*helm*/*.yml if search('{{.\+}}', 'nw') | setlocal filetype=gotmpl | endif

" hi link elixirDocString Comment
" syn match docAttr "@doc"
" hi link docAttr Comment
syn match elixirShortDoc '@\w*doc ".*"'
syn region elixirFullDoc start='@\w*doc """' end='"""'
hi link elixirShortDoc Comment
hi link elixirFullDoc Comment

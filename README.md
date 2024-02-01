```bash
git clone git@github.com:uri/vim.git ~/.config/nvim

# If using legacy vim config path (not neovim's)
ln -s ~/.config/nvim ~/.vim
echo "lua require('init')" > ~/.vim/vimrc
```

If using NeoVim and tmux, there's also a problem when switching panes. The
following snippet will fix the problem:

```
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
```

Originally found https://github.com/neovim/neovim/issues/2048#issuecomment-78045837

## Go templates

Follow instructions here: https://github.com/baptman21/tree-sitter-go-template

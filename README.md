```bash
git clone git@github.com:uri/vim.git ~/.vim
cd ~/.vim

# Check if there are any update https://github.com/Shougo/dein.vim
./installer.sh ./dein

# If using neovim
mkdir -p ~/.config/nvim
ln -s ~/.vim/vimrc ~/.config/nvim/init.vim
```

If using NeoVim and tmux, there's also a problem when switching panes. The
following snippet will fix the problem:

```
infocmp $TERM | sed 's/kbs=^[hH]/kbs=\\177/' > $TERM.ti
tic $TERM.ti
```

Originally found https://github.com/neovim/neovim/issues/2048#issuecomment-78045837

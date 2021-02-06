install:
	mkdir -p $(HOME)/.config/nvim
	ln -sf $(PWD)/coc-settings.json $(HOME)/.config/nvim/
	ln -sf $(PWD)/init.vim $(HOME)/.config/nvim/

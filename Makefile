# Default, if no target is specified
all: sync

# Sync target: creates necessary directories and symlinks if they don't exist
sync:
	mkdir -p ~/.config/tmux
	mkdir -p ~/.config/nvim
	mkdir -p ~/.config/ghostty

	[ -f ~/.config/tmux/tmux.conf ] || ln -s $(PWD)/tmux.conf ~/.config/tmux/tmux.conf
	[ -f ~/.config/nvim/init.lua ] || ln -s $(PWD)/init.lua ~/.config/nvim/init.lua
	[ -f ~/.config/ghostty/config ] || ln -s $(PWD)/ghostty.config ~/.config/ghostty/config

# Clean target: removes existing configurations
clean:
	rm -f ~/.config/nvim/init.lua
	rm -f ~/.config/ghostty/config
	rm -f ~/.config/tmux/tmux.conf

.PHONY: all clean sync 

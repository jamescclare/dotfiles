# .dotfiles #

**Setup**
- Run `curl https://raw.githubusercontent.com/jamescclare/dotfiles/master/scripts/setup-dotfiles | bash`

**Dependancies**
- Install brew dependancies
```
brew install zsh tmux nvim ripgrep fzf nvm
```
- Install latest node with nvm, e.g. `nvm install 22`
- Install [packer](https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#quickstart).
- Open `.config/nvim/lua/james/packer.lua`
```
nvim ~/.config/nvim/lua/james/packer.lua
```
- Run `:so`
- Run `:PackerSync`


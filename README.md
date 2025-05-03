# .dotfiles #

**Setup**
1. Run 
```
curl https://raw.githubusercontent.com/jamescclare/dotfiles/master/scripts/setup-dotfiles | bash
```
2. Install brew dependancies
```
brew install zsh tmux nvim ripgrep fzf nvm
```
3. Install latest node with nvm, e.g. `nvm install 22`
4. Install [packer](https://github.com/wbthomason/packer.nvim?tab=readme-ov-file#quickstart).
5. Open `.config/nvim/lua/james/packer.lua`
```
nvim ~/.config/nvim/lua/james/packer.lua
```
6. Run `:so`
7. Run `:PackerSync`


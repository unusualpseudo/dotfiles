# dotfiles

![Broken links checks](https://github.com/unusualpseudo/dotfiles/actions/workflows/broken-links-check.yaml/badge.svg)

the project holds and sync my dotfiles config with the home config folder.

## Setup Instructions


```sh
# clone the repo
git clone https://github.com/unusualpseudo/dotfiles.git ~/dotfiles
cd ~/dotfiles
# use gotask to run the sync of the config folder and setup fish and tmux
task dotfiles:setup
```

# Setup Fisher
fisher is a package manager for fish, here we install fisher with the plugin
[fzf.fish](https://github.com/PatrickF1/fzf.fish)
```sh
# go home
cd
# install Fisher
curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish -o ~/.config/fish/functions/fisher.fish

# install fzf.fish plugin
fisher install PatrickF1/fzf.fish
fisher update
``` 
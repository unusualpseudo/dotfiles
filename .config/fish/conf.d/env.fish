set -g fish_greeting # Supresses fish's intro message

set -gx LANG "en_US.UTF-8"
set -gx LC_CTYPE "en_US.UTF-8"

set -g fzf_default_command 'fd --type file'

set -gx EDITOR vim
set -gx SYSTEMD_EDITOR $EDITOR
set -gx KUBE_EDITOR $EDITOR
set -gx VISUAL $EDITOR


# Ansible
set -gx ANSIBLE_FORCE_COLOR true


# Path stuff
set PATH /usr/local/bin $PATH
set -gx PATH $PATH "$HOME/bin" 
set -gx PATH "$HOME/.local/bin" $PATH
set PATH $HOME/.cargo/bin $PATH
set PATH /opt/nvim-linux64/bin $PATH
set PATH /usr/local/go/bin $PATH

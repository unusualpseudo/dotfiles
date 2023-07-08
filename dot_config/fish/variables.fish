set -g fish_greeting                                 # Supresses fish's intro message

set -gx LANG "en_US.UTF-8"
set -gx LC_CTYPE "en_US.UTF-8"

set -gx EDITOR nano
set -gx SYSTEMD_EDITOR $EDITOR
set -gx KUBE_EDITOR $EDITOR
set -gx VISUAL $EDITOR


# Ansible
set -gx ANSIBLE_FORCE_COLOR true


# Path stuff
set PATH /usr/local/bin $PATH
set -gx PATH $PATH "$HOME/bin" # temporary executables
set -gx PATH "$HOME/.local/bin" $PATH 

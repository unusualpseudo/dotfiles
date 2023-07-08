set fish_greeting                                 # Supresses fish's intro message

# Force tmux to start in utf8 https://github.com/wernight/powerline-web-fonts/issues/8
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




# Bat
set -gx BAT_THEME "gruvbox-dark"


# Override default colors
set -l orange FF9E64
set -l pink BB9AF7
set -l purple 9D7CD8
set -l grey1 565F89
set -l grey2 33467C

set fish_color_normal white
set fish_color_command cyan
set fish_color_keyword $pink
set fish_color_quote yellow
set fish_color_redirection white
set fish_color_end $orange
set fish_color_error red --bold
set fish_color_param $purple
set fish_color_comment $grey1
set fish_color_selection --background $selection
set fish_color_match yellow
set fish_color_search_match --background $grey2
set fish_color_operator green
set fish_color_escape $pink
set fish_color_autosuggestion $comment

set fish_pager_color_progress $comment
set fish_pager_color_prefix cyan
set fish_pager_color_completion white
set fish_pager_color_description $comment
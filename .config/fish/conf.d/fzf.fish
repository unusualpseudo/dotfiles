
# Use exa if possible
if type -q exa
  set fzf_preview_dir_cmd exa --all --color=always
end

# FZF options
set -x FZF_DEFAULT_OPTS '--cycle --layout=reverse --border --height=90% --preview-window=wrap --marker="*" --color=fg:white,bg:black,hl:red,fg+:white,hl+:red,info:yellow,prompt:blue,pointer:magenta,marker:magenta,spinner:green,header:blue,border:white'
# Show hidden files except some directories
set fzf_fd_opts --hidden --exclude=.git --exclude=.github --exclude=.cache

set fzf_git_log_format "%H %s"
set fzf_history_time_format %d-%m-%y
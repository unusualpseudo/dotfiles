# git
if type -q git
    abbr g git
    abbr ga 'git add .'
    abbr gaa 'git add --all'
    abbr gc 'git commit'
    abbr gca 'git commit --amend --no-edit'
    abbr gcm 'git commit -m'
    abbr gs 'git status'
    abbr gp 'git push'
    abbr gpf 'git push -f origin main'
    abbr gpl 'git pull'
    abbr gl 'git log'
    abbr gd 'git diff'
    abbr gds 'git diff --staged'
    abbr gr 'git restore .'
    abbr grs 'git restore --staged .'
    abbr gcd 'cd (git rev-parse --show-toplevel)'
end

# kubectl
if type -q kubectl
    abbr k kubectl
    abbr kgp 'kubectl get pods'
    abbr kl 'kubectl logs'
    abbr kdp 'kubectl describe pod'
    abbr kdn 'kubectl describe node'
    abbr kgn 'kubectl get nodes'
    abbr wkgp 'hwatch -- kubectl get pod'
    abbr kx 'kubectl exec -it'
end

# k9s
if type fdfind -q
    abbr fd fdfind
end


# k9s
if type -q k9s
    abbr ks k9s
end

# the fuck
if type -q thefuck
    abbr f fuck
end

# the exa
if type -q exa
    abbr ls exa
end

# bat
if type -q batcat
    abbr cat batcat
end


# tmux
if type -q tmux
    abbr ta 'tmux attach -t'
    abbr tn 'tmux new -s'
    abbr tl 'tmux ls'
    abbr tk 'tmux kill-session -t'
end

# easy workspace access
abbr cw 'cd $HOME/workspace'
abbr dl 'cd $HOME/Downloads/'
abbr dotfiles 'nvim $HOME/workspace/dotfiles/'
abbr nexus 'nvim $HOME/workspace/nexus/'

# basic abbreviations
abbr df 'df -h' # human-readable sizes
abbr free 'free -m' # show sizes in MB
abbr .. 'cd ..'
abbr ... 'cd ../..'
abbr .3 'cd ../../..'
abbr .4 'cd ../../../..'
abbr .5 'cd ../../../../..'
abbr ls 'exa -lag --header'


# Colorize grep output
abbr grep 'grep --color=auto'

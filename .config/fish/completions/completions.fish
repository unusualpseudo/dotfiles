#!/usr/bin/fish


## Setup completions
if not test -d $__fish_config_dir/completions
    mkdir -p $__fish_config_dir/completions
end

if type -q flux
    echo "Setting up flux completion"
    flux completion fish >$__fish_config_dir/completions/flux.fish
end

if type -q kustomize
    echo "Setting up kustomize completion"
    kustomize completion fish >$__fish_config_dir/completions/kustomize.fish
end

if type -q kubectl
    echo "Setting up kubectl completion"
    kubectl completion fish >$__fish_config_dir/completions/kubectl.fish
end

if type -q helm
    echo "Setting up helm completion"
    helm completion fish >$__fish_config_dir/completions/helm.fish
end

if type -q k9s
    echo "Setting up k9s completion"
    k9s completion fish >$__fish_config_dir/completions/k9s.fish
end

if type -q task
    echo "Setting up task completion"
    curl --silent --show-error https://raw.githubusercontent.com/go-task/task/master/completion/fish/task.fish >$__fish_config_dir/completions/task.fish
end

if type -q alacritty
    echo "Setting up alacritty completion"
    curl --silent --show-error https://raw.githubusercontent.com/alacritty/alacritty/master/extra/completions/alacritty.fish >$__fish_config_dir/completions/task.fish
end

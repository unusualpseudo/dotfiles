#!/usr/bin/fish

echo -e "\033[0;32m>>>>> Begin Setting Up Fish Completions <<<<<\033[0m"

## Setup completions
if not test -d $__fish_config_dir/completions
  mkdir -p $__fish_config_dir/completions
end

if type -q chezmoi
  echo "Setting up chezmoi completion"
  chezmoi completion fish --output=$__fish_config_dir/completions/chezmoi.fish
end

if type -q flux
  echo "Setting up flux completion"
  flux completion fish > $__fish_config_dir/completions/flux.fish
end

if type -q kustomize
  echo "Setting up kustomize completion"
  kustomize completion fish > $__fish_config_dir/completions/kustomize.fish
end

if type -q kubectl
  echo "Setting up kubectl completion"
  kubectl completion fish > $__fish_config_dir/completions/kubectl.fish
end

if type -q helm
  echo "Setting up helm completion"
  helm completion fish > $__fish_config_dir/completions/helm.fish
end

if type -q k9s
  echo "Setting up k9s completion"
  k9s completion fish > $__fish_config_dir/completions/k9s.fish
end

if type -q task
  echo "Setting up task completion"
  curl --silent --show-error https://raw.githubusercontent.com/go-task/task/master/completion/fish/task.fish > $__fish_config_dir/completions/task.fish
end

echo -e "\033[0;32m>>>>> Finish Setting Fish Completions <<<<<\033[0m"
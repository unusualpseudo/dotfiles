

# source custom configs
for file in $__fish_config_dir/conf.d/*.fish
    source $file
end

# custom functions autoload
if test -d $__fish_config_dir/functions
    set -gp fish_function_path $__fish_config_dir/functions
end

# launch Starship prompt
if type -q starship
    starship init fish | source
end

if type -q direnv
    direnv hook fish | source
end

if type -q thefuck
    thefuck --alias | source
end

# functions
# Use lf to switch directories
function lfcd () {
    tmp="$(mktemp)"
    # `command` is needed in case `lfcd` is aliased to `lf`
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

# keybinds
bindkey -s '^f' 'lfcd\n'
bindkey -s '^u' 'tmux-sessionizer\n'
bindkey -s '^p' 'fzcdproj\n'
bindkey '^[a' autosuggest-accept
bindkey '^[e' autosuggest-execute

if status is-interactive
    set -g fish_greeting
    set -g fish_color_command green

    bind ctrl-n history-prefix-search-backward
    bind ctrl-p history-prefix-search-forward

    alias ls 'eza'
    alias l 'eza -l'
    alias ll 'eza -lh'
    alias la 'eza -lha'

    export HOMEBREW_NO_AUTO_UPDATE=1
end

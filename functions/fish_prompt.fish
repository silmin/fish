function fish_prompt
    set -l last_status $status

    printf '\n'

    # user@hostname
    set_color blue
    printf '%s@%s' $USER (prompt_hostname)
    set_color normal

    # path
    set -g fish_prompt_pwd_dir_length 3
    printf ' '
    set_color bryellow
    printf '%s' (prompt_pwd)
    set_color normal

    # git
    set -g __fish_git_prompt_showdirtystate 1
    set -g __fish_git_prompt_showuntrackedfiles 1
    set -g __fish_git_prompt_showstashstate 1
    set -g __fish_git_prompt_color brmagenta
    set -g __fish_git_prompt_color_branch brmagenta
    set -g __fish_git_prompt_color_dirtystate brmagenta
    set -g __fish_git_prompt_color_untrackedfiles brmagenta
    set -g __fish_git_prompt_color_stashstate brmagenta
    set -g __fish_git_prompt_showupstream informative
    set -g __fish_git_prompt_char_upstream_ahead ' ↑'
    set -g __fish_git_prompt_char_upstream_behind ' ↓'
    set -g __fish_git_prompt_color_upstream_ahead brmagenta
    set -g __fish_git_prompt_color_upstream_behind brmagenta
    printf '%s' (fish_git_prompt)
    set_color normal

    # prompt symbol
    if test $last_status -ne 0
        set_color brred
    else
        set_color normal
    end
    printf '\n$ '
    set_color normal
end

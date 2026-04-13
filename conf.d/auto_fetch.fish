if status is-interactive
    function __auto_fetch_on_pwd --on-variable PWD
        set -l git_root (command git rev-parse --show-toplevel 2>/dev/null)
        or return

        contains -- $git_root $__auto_fetched_repos
        and return

        set -ga __auto_fetched_repos $git_root
        command git -C $git_root fetch --quiet &
        disown
    end

    # シェル起動時にも実行
    __auto_fetch_on_pwd
end

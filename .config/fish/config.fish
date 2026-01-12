set -g fish_greeting
if status is-interactive
    # distrobox aliases
    alias dbuild="distrobox assemble create --file"
    function drebuild
        distrobox rm $argv && dbuild $argv
    end

    # dotfiles alias
    alias dotfiles='git --git-dir="$HOME/.dotfiles/" --work-tree="$HOME"'
end

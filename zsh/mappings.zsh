function zle_eval {
    echo -en "\e[2K\r"
    eval "$@"
    zle redisplay
}

function openlazygit {
    zle_eval lazygit
}

zle -N openlazygit; bindkey "^G" openlazygit

function openlazynpm {
    zle_eval lazynpm
}

zle -N openlazynpm; bindkey "^N" openlazynpm

function openlazydocker {
    zle_eval sudo lazydocker
}

zle -N openlazydocker; bindkey "^A" openlazydocker

function opentmux {
    zle_eval tmux
}

zle -N opentmux; bindkey "^Q" opentmux

#
# ~/.bashrc
#

# Entorno
export EDITOR="nano"
export PATH="$HOME/.local/bin:$PATH"
export XDG_DATA_HOME="$HOME/.local/share"

# Si la shell no es interactiva, no cargar prompt, aliases ni herramientas visuales.
[[ $- != *i* ]] && return

# Autocompletado de Bash
if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
fi

# Prompt
if command -v starship >/dev/null 2>&1; then
    eval "$(starship init bash)"
fi

# Fastfetch centrado para Ghostty
cfetch() {
    command -v fastfetch >/dev/null 2>&1 || return

    local logo_width=38
    local text_width=45
    local gap=2
    local visual_offset=12
    local total_content_width=$((logo_width + gap + text_width))

    local -a logos=("$HOME"/.config/fastfetch/media/*.png)
    if [ ! -e "${logos[0]}" ]; then
        fastfetch
        return
    fi

    local logo_path
    logo_path=$(shuf -e "${logos[@]}" -n 1)

    local term_width
    term_width=$(tput cols 2>/dev/null || printf '120')

    local padding=$((((term_width - total_content_width) / 2) - visual_offset))
    if [ "$padding" -lt 0 ]; then
        padding=0
    fi

    fastfetch \
        --logo "$logo_path" \
        --logo-type kitty \
        --logo-width "$logo_width" \
        --logo-height 19 \
        --logo-padding-top 3 \
        --logo-padding-left "$padding"
}

cfetch

# Wrapper de shell para Yazi
y() {
    local tmp cwd
    tmp="$(mktemp -t "yazi-cwd.XXXXXX")" || return

    yazi "$@" --cwd-file="$tmp"
    IFS= read -r -d '' cwd < "$tmp"
    [ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
    rm -f -- "$tmp"
}

# Node Version Manager
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"

# Exa
alias ls='exa --icons -l --color=always --git'
alias lsdt='exa --icons --color=always -T -D'
alias lsdt1='exa --icons --color=always -T -D -L1'
alias lsdt2='exa --icons --color=always -T -D -L2'
alias lsdt3='exa --icons --color=always -T -D -L3'
alias lst='exa -lhT --icons --color=always'
alias lsz='exa -s=size -l --icons --color=always'

# Disco de Windows
alias winmount='sudo mount -t ntfs-3g /dev/nvme1n1p3 /mnt/windows'
alias winumount='sudo umount /mnt/windows'

# Mantenimiento del sistema en Arch
alias update='sudo pacman -Syu'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias search='pacman -Ss'
alias cleanup='sudo pacman -Sc'
alias restart_plasma='systemctl --user restart plasma-plasmashell'

# Navegación y herramientas
alias cd..='cd ..'
alias ..='cd ..'
alias mkd='mkdir -p'
alias conf='cd ~/.config'
alias hist='history | grep'
alias grep='grep --color=auto'
alias cls='clear'

# Tmux
alias tdl='devlayout'

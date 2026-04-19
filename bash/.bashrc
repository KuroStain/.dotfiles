#
# ~/.bashrc
#

sleep 0.1s

#Inicio Fastfetch
# --- Configuración de Centrado para Fastfetch (Ghostty) [v3 Final] ---

function cfetch() {
    # === CONFIGURACIÓN ===
    # Ajusta estas variables según tu preferencia visual
    local LOGO_WIDTH=38
    local TEXT_WIDTH=45
    local GAP=2
    
    # ¡AQUÍ ESTÁ LA MAGIA!
    # Aumenta este número para mover todo el bloque hacia la IZQUIERDA.
    # Un valor entre 10 y 15 suele corregir el efecto óptico.
    local VISUAL_OFFSET=12 

    # === LÓGICA ===
    local TOTAL_CONTENT_WIDTH=$((LOGO_WIDTH + GAP + TEXT_WIDTH))

    # Selección del logo
    local logo_path
    logo_path=$(shuf -e ~/.config/fastfetch/media/*.png -n 1)

    # Obtener ancho de terminal
    local term_width
    term_width=$(tput cols)

    # Calcular el padding matemático y aplicar la corrección visual
    # Fórmula: ((AnchoTerminal - Contenido) / 2) - Corrección
    local padding=$(( ((term_width - TOTAL_CONTENT_WIDTH) / 2) - VISUAL_OFFSET ))

    # Protección: Si la pantalla es muy pequeña, el padding no puede ser negativo
    if [ "$padding" -lt 0 ]; then
        padding=0
    fi

    # Ejecución
    fastfetch \
        --logo "$logo_path" \
        --logo-type kitty \
        --logo-width "$LOGO_WIDTH" \
        --logo-height 19 \
        --logo-padding-top 3 \
        --logo-padding-left "$padding"
}

cfetch


# Inicio Starship
eval "$(starship init bash)"

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Habilitar bash-completion si está instalado
if [ -f /usr/share/bash-completion/bash_completion ]; then
  . /usr/share/bash-completion/bash_completion
fi

# === Editor predefinido ===
export EDITOR="nano"

# === Yazi Shell Wrapper ===
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

# === Exa (ls replacement) ===
alias ls='exa --icons -l --color=always --git'
alias lsdt='exa --icons --color=always -T -D'
alias lsdt1='exa --icons --color=always -T -D -L1'
alias lsdt2='exa --icons --color=always -T -D -L2'
alias lsdt3='exa --icons --color=always -T -D -L3'
alias lst='exa -lhT --icons --color=always'
alias lsz='exa -s=size -l --icons --color=always'

# Alias para montar/desmontar el disco de Windows
alias winmount='sudo mount -t ntfs-3g /dev/nvme1n1p3 /mnt/windows'
alias winumount='sudo umount /mnt/windows'

# === Sistema y Mantenimiento (Arch) ===
alias update='sudo pacman -Syu'
alias install='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias search='pacman -Ss'
alias cleanup='sudo pacman -Sc'
alias restart_plasma='systemctl --user restart plasma-plasmashell'

# === Navegación y Herramientas ===
alias cd..='cd ..'
alias ..='cd ..'
alias mkd='mkdir -p'
alias conf='cd ~/.config'
alias hist='history | grep'
alias grep='grep --color=auto'
alias cls='clear'



export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export XDG_DATA_HOME="/home/kuroflynn/.local/share"

export XDG_DATA_HOME="/home/kuroflynn/.local/share"

export XDG_DATA_HOME="/home/kuroflynn/.local/share"

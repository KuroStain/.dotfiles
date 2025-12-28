#
# ~/.bashrc
#

sleep 0.1s

#Inicio Fastfetch
fastfetch --logo $(ls ~/.config/fastfetch/media/*.png | shuf -n 1) --logo-width 38 --logo-height 19 --logo-padding-top 3 --logo-padding-left 1

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



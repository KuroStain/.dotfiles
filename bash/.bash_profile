#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
export QSG_RHI_BACKEND=opengl

#. "$HOME/.local/share/../bin/env"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

#!/bin/bash

# Script de instalación de dotfiles
# Este script crea enlaces simbólicos de los archivos de configuración
# al directorio home del usuario

set -e

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
HOME_DIR="$HOME"

# Colores para output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Función para imprimir mensajes
print_info() {
    echo -e "${BLUE}ℹ${NC} $1"
}

print_success() {
    echo -e "${GREEN}✓${NC} $1"
}

print_warning() {
    echo -e "${YELLOW}⚠${NC} $1"
}

print_error() {
    echo -e "${RED}✗${NC} $1"
}

# Función para crear enlace simbólico
create_symlink() {
    local source="$1"
    local target="$2"
    
    # Crear directorio padre si no existe
    mkdir -p "$(dirname "$target")"
    
    # Si el archivo ya existe
    if [ -e "$target" ] || [ -L "$target" ]; then
        if [ -L "$target" ] && [ "$(readlink "$target")" = "$source" ]; then
            print_success "Ya existe: $target"
            return 0
        fi
        
        # Hacer backup
        local backup="${target}.backup.$(date +%s)"
        print_warning "Respaldando: $target → $backup"
        mv "$target" "$backup"
    fi
    
    # Crear el enlace simbólico
    ln -s "$source" "$target"
    print_success "Vinculado: $target → $source"
}

# Banner
echo -e "${BLUE}═══════════════════════════════════════════════════${NC}"
echo -e "${BLUE}   Instalación de Dotfiles${NC}"
echo -e "${BLUE}═══════════════════════════════════════════════════${NC}"
echo ""
print_info "Dotfiles directory: $DOTFILES_DIR"
print_info "Home directory: $HOME_DIR"
echo ""

# Preguntar confirmación
read -p "¿Deseas continuar con la instalación? (s/n) " -n 1 -r
echo
if [[ ! $REPLY =~ ^[Ss]$ ]]; then
    print_error "Instalación cancelada"
    exit 1
fi

echo ""
print_info "Iniciando instalación..."
echo ""

# ===== BASH =====
print_info "Configurando Bash..."
create_symlink "$DOTFILES_DIR/bash/.bash_profile" "$HOME_DIR/.bash_profile"
create_symlink "$DOTFILES_DIR/bash/.bashrc" "$HOME_DIR/.bashrc"

# ===== .config =====
print_info "Configurando aplicaciones en .config..."

# Ghostty
create_symlink "$DOTFILES_DIR/.config/ghostty" "$HOME_DIR/.config/ghostty"

# Yazi
create_symlink "$DOTFILES_DIR/.config/yazi" "$HOME_DIR/.config/yazi"

# Fastfetch
create_symlink "$DOTFILES_DIR/.config/fastfetch" "$HOME_DIR/.config/fastfetch"

# Starship
create_symlink "$DOTFILES_DIR/.config/starship.toml" "$HOME_DIR/.config/starship.toml"

# Trolltech (Qt/KDE)
create_symlink "$DOTFILES_DIR/.config/Trolltech.conf" "$HOME_DIR/.config/Trolltech.conf"

# ===== KVANTUM =====
print_info "Configurando Kvantum..."
mkdir -p "$HOME_DIR/.config/Kvantum"
create_symlink "$DOTFILES_DIR/Kvantum" "$HOME_DIR/.config/Kvantum/Dotfiles"

# ===== DESKTOP =====
print_info "Configurando autostart del escritorio..."
create_symlink "$DOTFILES_DIR/desktop/.config/autostart" "$HOME_DIR/.config/autostart"

# Resumen final
echo ""
echo -e "${BLUE}═══════════════════════════════════════════════════${NC}"
print_success "¡Instalación completada!"
echo -e "${BLUE}═══════════════════════════════════════════════════${NC}"
echo ""
print_info "Pasos siguientes:"
echo "  1. Recarga tu shell: source ~/.bashrc"
echo "  2. Verifica las configuraciones"
echo "  3. Ajusta según tus necesidades"
echo ""
print_warning "Nota: Se crearon backups de archivos existentes con sufijo .backup.*"
echo ""

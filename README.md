# Dotfiles

Configuración personalizada de entorno de desarrollo y sistema para Linux.

## 📁 Estructura

### `bash/`
Archivos de configuración de la shell Bash:
- **`.bash_profile`**: Archivo de inicio para sesiones de login
- **`.bashrc`**: Configuración interactiva de Bash

### `.config/`
Configuración de aplicaciones XDG-compliant:

#### `ghostty/`
Terminal emulador Ghostty:
- **`config`**: Archivo de configuración principal

#### `fastfetch/`
Herramienta de información del sistema:
- **`config.jsonc`**: Configuración de fastfetch

#### `starship.toml`
Configuración del prompt personalizado Starship

#### `Trolltech.conf`
Configuración de aplicaciones Qt/KDE

### `yazi/`
Gestor de archivos Yazi:
- **`yazi.toml`**: Configuración principal
- **`theme.toml`**: Configuración de tema
- **`keymap.toml`**: Atajos de teclado personalizados
- **`package.toml`**: Gestión de paquetes/plugins
- **`flavors/`**: Temas adicionales (incluyendo tokyo-night, ashen, synthwave84 y ayu-dark)

### `environment.d/`
Variables de entorno personalizadas:
- **`ghostty.conf`**: Variables de entorno para Ghostty (GTK_IM_MODULE)

### `Kvantum/`
Tema y estilos de interfaz gráfica Kvantum:
- **`.config/Kvantum/kvantum.kvconfig`**: Configuración principal de Kvantum
- **`.config/Kvantum/Otto/Otto.kvconfig`**: Configuración del tema Otto
- **`.config/Kvantum/Otto/Otto.svg`**: Recursos visuales del tema

## 🚀 Instalación

### Vinculación simbólica manual
```bash
# Bash
ln -s ~/.dotfiles/bash/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc

# Config
ln -s ~/.dotfiles/.config/* ~/.config/

# Yazi
ln -s ~/.dotfiles/yazi ~/.config/yazi

# Kvantum
ln -s ~/.dotfiles/Kvantum ~/.config/Kvantum
```

## 📝 Herramientas Configuradas

- **Bash**: Shell configurada con perfil personalizado
- **Ghostty**: Terminal moderno y rápido
- **Yazi**: Gestor de archivos terminal con vista previa
- **Starship**: Prompt interactivo personalizado
- **Fastfetch**: Información del sistema visualmente atractiva
- **Kvantum**: Tema de interfaz gráfica consistente

## 💡 Notas

- Este repositorio usa Git para versionado y mantenimiento
- Las configuraciones están organizadas siguiendo el estándar XDG Base Directory
- Los temas (Kvantum, Yazi) son personalizables según preferencias

## 📜 Licencia

Estos dotfiles son de uso personal. Siéntete libre de adaptarlos a tus necesidades.

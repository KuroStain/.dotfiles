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
- **`themes/`**: Temas personalizados para Ghostty

#### `yazi/`
Gestor de archivos Yazi:
- **`yazi.toml`**: Configuración principal
- **`theme.toml`**: Configuración de tema
- **`package.toml`**: Gestión de paquetes/plugins
- **`flavors/`**: Temas adicionales (incluyendo tokyo-night y ashen)

#### `fastfetch/`
Herramienta de información del sistema:
- **`config.jsonc`**: Configuración de fastfetch

#### `starship.toml`
Configuración del prompt personalizado Starship

#### `Trolltech.conf`
Configuración de aplicaciones Qt/KDE

### `desktop/`
Configuración del entorno de escritorio:
- **`.config/autostart/`**: Aplicaciones que se ejecutan al iniciar sesión

### `Kvantum/`
Tema y estilos de interfaz gráfica Kvantum:
- **`kvantum.kvconfig`**: Configuración principal de Kvantum
- **`Otto/`**: Tema personalizado Otto
  - `Otto.kvconfig`: Configuración del tema
  - `Otto.svg`**: Recursos visuales del tema

## 🚀 Instalación

### Opción 1: Vinculación simbólica manual
```bash
# Bash
ln -s ~/.dotfiles/bash/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc

# Config
ln -s ~/.dotfiles/.config/* ~/.config/
```

### Opción 2: Script de instalación (Recomendado)
```bash
chmod +x ./install.sh
./install.sh
```

El script `install.sh` automatiza el proceso:
- ✅ Crea enlaces simbólicos de todas las configuraciones
- ✅ Realiza backups automáticos de archivos existentes
- ✅ Crea directorios necesarios
- ✅ Proporciona feedback visual durante la instalación
- ✅ Pide confirmación antes de proceder

## 📝 Herramientas Configuradas

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

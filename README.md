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
  - Deshabilitado schema de validación (línea comentada)
  - Deshabilitado título personalizado del gestor
  - Optimizados settings de plugins con formato correcto
  - Cambio de atributo `name` a `url` en reglas de apertura
  - Deshabilitados workers (micro/macro)
- **`theme.toml`**: Configuración de tema
- **`keymap.toml`**: Atajos de teclado personalizados
- **`package.toml`**: Gestión de paquetes/plugins
- **`flavors/`**: Temas adicionales
  - **`synthwave84.yazi/flavor.toml`**: Tema Synthwave 84 optimizado
    - Simplificado sistema de reglas de MIME types
    - Eliminadas reglas redundantes y TODOs
    - Cambio de `name` a `url` para mejor compatibilidad
    - Cambio de `mime = "text/*"` para mejor cobertura de archivos de texto

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
mkdir -p ~/.config/Kvantum
ln -s ~/.dotfiles/Kvantum/.config/Kvantum/kvantum.kvconfig ~/.config/Kvantum/kvantum.kvconfig
ln -s ~/.dotfiles/Kvantum/.config/Kvantum/Otto ~/.config/Kvantum/Otto
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

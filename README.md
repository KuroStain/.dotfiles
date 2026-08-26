# Dotfiles

Configuración personal de entorno de desarrollo y escritorio para Linux. El repositorio conserva dos configuraciones de escritorio: la actual, basada en **Hyprland + Ambxst**, y la configuración de **KDE Plasma / Project Nightjar**.

## Checkpoints

- **`hyprland-v1.0.0`**: checkpoint estable de la configuración actual de Hyprland + Ambxst.
- **`plasma-v1.0.0`**: baseline de Project Nightjar para KDE Plasma.

## Estructura

```text
.
├── .config/
│   ├── fastfetch/config.jsonc
│   ├── ghostty/
│   └── starship.toml
├── ambxst/
│   ├── .config/ambxst/
│   │   ├── binds.json
│   │   ├── config/
│   │   └── presets/active_preset
│   ├── .local/bin/ambxst
│   └── .local/share/ambxst/no-ddc/ddcutil
├── bash/
├── environment.d/
│   ├── cursor.conf
│   └── ghostty.conf
├── hypr/
│   └── .config/hypr/
│       ├── hyprland.lua
│       ├── hypridle.conf
│       ├── hyprlauncher.conf
│       └── hyprlock.conf
├── Kvantum/
├── nano/
├── plasma/
└── yazi/
```

### `hypr/`

Configuración de Hyprland y utilidades asociadas:

- **`hyprland.lua`**: configuración principal en Lua. Define Ghostty mediante UWSM como terminal, Dolphin como gestor de archivos y Hyprlauncher como lanzador.
- **`hypridle.conf`**: bloqueo a los 10 minutos, DPMS a los 11 minutos y suspensión a los 30 minutos.
- **`hyprlock.conf`**: pantalla de bloqueo con captura del escritorio desenfocada.
- **`hyprlauncher.conf`**: ejecuta aplicaciones de escritorio con el prefijo `uwsm app --`.

La disposición de pantallas versionada es específica para este equipo:

- `HDMI-A-1`: Samsung Odyssey G5 a `2560x1440@144`, escala `1`; recibe los workspaces 1–5.
- `eDP-2`: panel del notebook a `2560x1600@240`, escala `1.25`; recibe los workspaces 6–10.

Hyprland carga la integración instalada de Ambxst desde `~/.local/share/ambxst/hyprland.lua`. Después de esa carga se aplica `follow_mouse = 0`, de modo que el foco queda controlado por teclado o clic y no por hover. El layout base es `dwindle`, con `preserve_split`, animaciones, blur, bordes redondeados y reglas para ignorar solicitudes de maximizado y evitar problemas de arrastre en XWayland.

#### Atajos principales de Hyprland

Estos binds están definidos directamente en `hyprland.lua`:

- `Super+Q`: abrir Ghostty mediante UWSM.
- `Super+E`: abrir Dolphin.
- `Super+R`: abrir Hyprlauncher.
- `Super+C`: cerrar la ventana activa.
- `Super+V`: alternar modo flotante.
- `Super+P`: alternar pseudotiling.
- `Super+J`: alternar la dirección del split en `dwindle`.
- `Super+L`: bloquear con Hyprlock.
- `Super+1…0`: cambiar a los workspaces 1–10.
- `Super+Shift+1…0`: mover la ventana activa a los workspaces 1–10.
- `Super` + arrastre con botón izquierdo/derecho: mover/redimensionar ventanas.

Los binds de foco con `Super` + flechas y los del workspace especial están comentados en esta capa para evitar duplicarlos con Ambxst.

### `ambxst/`

Ambxst está gestionado desde este repositorio mediante la estructura de paquetes de GNU Stow. Sus enlaces simbólicos apuntan desde `~/.config/ambxst` y `~/.local/...` hacia `ambxst/`, por lo que los ajustes editados por Ambxst quedan bajo control de versiones en los dotfiles.

La configuración versionada incluye:

- Barra superior fijada al inicio y revelable por hover; dock y escritorio de Ambxst deshabilitados.
- Overview de 5 columnas por 2 filas y 10 workspaces no dinámicos.
- Tema oscuro con `Roboto Condensed` e `Iosevka Nerd Font Mono`.
- Ajustes de compositor sincronizados con Ambxst: redondeo, gaps, sombras y blur.
- Configuración de bloqueo, energía, OCR en español y binds personalizados.

Entre los binds propios de Ambxst presentes en `binds.json` están `Super+D` para el dashboard, `Super+Tab` para el overview, `Super+Esc` para el menú de energía, `Super+Shift+S` para capturas, `Super+Shift+R` para grabación y `Super+Alt+B` para recargar Ambxst. El archivo también contiene la navegación y movimiento de ventanas/workspaces, controles multimedia, brillo y acciones al cerrar o abrir la tapa.

#### Wrapper de Ambxst y bloqueo de DDC/CI

`ambxst/.local/bin/ambxst` es el punto de entrada local. El wrapper antepone `~/.local/share/ambxst/no-ddc` a `PATH` y después delega todos los argumentos al binario real `/usr/local/bin/ambxst`.

Dentro de ese directorio se instala un shim llamado `ddcutil` que termina correctamente sin ejecutar ninguna operación. Así, cualquier invocación de `ddcutil` hecha desde Ambxst se convierte en un no-op y se evita que Ambxst intente controlar por DDC/CI el monitor Samsung Odyssey G5. El shim solo afecta a los procesos iniciados a través del wrapper; no reemplaza globalmente el `ddcutil` del sistema.

### `plasma/` — Project Nightjar

La configuración de KDE Plasma se mantiene como Project Nightjar y conserva su checkpoint **`plasma-v1.0.0`**:

- **`.config/kdeglobals`**: esquema `MoeDark`, look and feel `Moe-Dark`, iconos `Slot-Symbolic-Dark-Icons`, Ghostty como terminal y preferencias generales de KDE.
- **`.config/plasma-org.kde.plasma.desktop-appletsrc`**: escritorios, panel y widgets; incluye Launchpad Plasma, CatWalk, bandeja del sistema, reloj, Panel Colorizer y PlasMusic Toolbar.
- **`.config/kwinrc`**: efectos de KWin, mosaico 25/50/25 con separación de 4 px, layouts de KZones, decoración Aurorae y escala XWayland de 1.25.
- **`.config/kglobalshortcutsrc`**: atajos de Plasma y KWin; `Alt+W` abre Skwd y los atajos directos de KZones están deshabilitados.
- **`.config/kscreenlockerrc`**: bloqueo automático deshabilitado y fondo Materia Dark.
- **`.config/plasmarc`**: catálogo local de fondos de pantalla.

Launchpad Plasma, CatWalk, Panel Colorizer, PlasMusic Toolbar y el plugin de fondos de video aparecen referenciados en la configuración; deben existir en el sistema para reproducir el escritorio completo.

### `environment.d/`

Variables de entorno de sesión:

- **`cursor.conf`**: selecciona el cursor **Bibata-Modern-Ice** con tamaño 24.
- **`ghostty.conf`**: establece `GTK_IM_MODULE=simple`.

### Otros paquetes

- **`bash/`**: perfil y configuración interactiva de Bash; incluye la inicialización de Bun y binarios locales, `pacrefresh`, la función `comfy` y el alias `tdl`.
- **`.config/ghostty/`**: configuración y temas de Ghostty.
- **`.config/fastfetch/`**: presentación de información del sistema.
- **`.config/starship.toml`**: prompt de Starship.
- **`yazi/`**: configuración, keymap, paquetes y flavors de Yazi.
- **`Kvantum/`**: configuración de Kvantum y tema Otto.
- **`nano/`**: configuración de Nano.

## Gestión de enlaces

Los paquetes con una jerarquía equivalente a `$HOME` pueden enlazarse desde la raíz del repositorio con Stow. Para el escritorio Hyprland + Ambxst:

```bash
cd ~/.dotfiles
stow hypr ambxst
```

Esto crea, entre otros, los enlaces de `~/.config/hypr`, `~/.config/ambxst`, `~/.local/bin/ambxst` y el shim de `ddcutil`. Los demás directorios empaquetados con la misma estructura (`bash`, `plasma`, `yazi`, `Kvantum` y `nano`) pueden gestionarse del mismo modo y de forma independiente.

Los archivos de `environment.d/` se enlazan explícitamente dentro de `~/.config/environment.d/`:

```bash
mkdir -p ~/.config/environment.d
ln -s ~/.dotfiles/environment.d/cursor.conf ~/.config/environment.d/cursor.conf
ln -s ~/.dotfiles/environment.d/ghostty.conf ~/.config/environment.d/ghostty.conf
```

La configuración común almacenada directamente en `.config/` también se enlaza de forma explícita:

```bash
ln -s ~/.dotfiles/.config/ghostty ~/.config/ghostty
ln -s ~/.dotfiles/.config/fastfetch ~/.config/fastfetch
ln -s ~/.dotfiles/.config/starship.toml ~/.config/starship.toml
ln -s ~/.dotfiles/.config/Trolltech.conf ~/.config/Trolltech.conf
```

Antes de crear los enlaces, conviene retirar o respaldar cualquier archivo real que ya ocupe esas rutas.

## Notas

- La configuración de monitores, fondos y algunas rutas es específica del equipo y del usuario actual.
- El tag `hyprland-v1.0.0` identifica el estado consolidado de Hyprland + Ambxst descrito aquí.
- Las configuraciones siguen, en lo posible, la jerarquía XDG y se versionan como enlaces simbólicos administrados desde este repositorio.

## Licencia

Estos dotfiles son de uso personal. Siéntete libre de adaptarlos a tus necesidades.

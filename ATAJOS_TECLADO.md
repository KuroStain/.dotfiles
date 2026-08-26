# Atajos de teclado

Referencia de los atajos activos versionados en este repositorio. La configuración de escritorio actual combina binds nativos de **Hyprland** con binds generados por **Ambxst**; los atajos de **KDE Plasma / Project Nightjar** se conservan en una sección independiente.

En este documento, `Super` y `Meta` se refieren a la misma tecla física. Los rangos `1…0` representan los workspaces 1–10, donde `0` corresponde al workspace 10.

## Hyprland

Fuente: `hypr/.config/hypr/hyprland.lua`

### Aplicaciones y ventanas

| Atajo | Acción |
| --- | --- |
| `Super+Q` | Abrir Ghostty mediante `uwsm app -- ghostty`. |
| `Super+E` | Abrir Dolphin. |
| `Super+R` | Abrir Hyprlauncher. |
| `Super+C` | Cerrar la ventana activa. |
| `Super+V` | Alternar el modo flotante de la ventana activa. |
| `Super+P` | Alternar pseudotiling. |
| `Super+J` | Alternar la dirección del split en el layout `dwindle`. |
| `Super+L` | Bloquear la sesión con Hyprlock. |
| `Super+M` | Ejecutar `hyprshutdown` si está disponible; en caso contrario, intentar salir de Hyprland. |

### Workspaces y ratón

| Atajo | Acción |
| --- | --- |
| `Super+1…0` | Cambiar a los workspaces 1–10. |
| `Super+Shift+1…0` | Mover la ventana activa a los workspaces 1–10. |
| `Super+rueda abajo` | Cambiar al workspace existente siguiente. |
| `Super+rueda arriba` | Cambiar al workspace existente anterior. |
| `Super+botón izquierdo` + arrastre | Mover la ventana. |
| `Super+botón derecho` + arrastre | Redimensionar la ventana. |

Los binds nativos `Super` + flechas para cambiar el foco están comentados. También están comentados los binds nativos del workspace especial; ambas familias se delegan a Ambxst para evitar movimientos duplicados.

### Teclas multimedia

| Tecla | Acción |
| --- | --- |
| `XF86AudioRaiseVolume` / `XF86AudioLowerVolume` | Subir o bajar el volumen en pasos de 5 %. |
| `XF86AudioMute` | Silenciar o restaurar la salida de audio. |
| `XF86AudioMicMute` | Silenciar o restaurar el micrófono. |
| `XF86MonBrightnessUp` / `XF86MonBrightnessDown` | Subir o bajar el brillo en pasos de 5 %. |
| `XF86AudioNext` / `XF86AudioPrev` | Pista siguiente o anterior mediante `playerctl`. |
| `XF86AudioPlay` / `XF86AudioPause` | Alternar reproducción y pausa mediante `playerctl`. |

## Ambxst

Fuente: `ambxst/.config/ambxst/binds.json`

Los 98 elementos de la lista `custom` están habilitados. Los patrones repetidos se condensan a continuación sin omitir sus rangos.

### Interfaces de Ambxst

| Atajo | Acción de Ambxst |
| --- | --- |
| `Super+Super_L` | Abrir el launcher (`ambxst.launcher`). |
| `Super+A` | Abrir el asistente. |
| `Super+V` | Abrir el portapapeles. |
| `Super+D` | Abrir el dashboard. |
| `Super+.` | Abrir el selector de emoji. |
| `Super+N` | Abrir notas. |
| `Super+S` | Abrir herramientas. |
| `Super+T` | Abrir la integración de tmux. |
| `Super+,` | Abrir fondos de pantalla. |
| `Super+Tab` | Mostrar el overview. |
| `Super+Esc` | Mostrar el menú de energía. |
| `Super+L` | Bloquear la sesión. |
| `Super+Shift+C` | Abrir la configuración de Ambxst. |
| `Super+Shift+A` | Abrir Lens. |
| `Super+Shift+S` | Tomar una captura de pantalla. |
| `Super+Shift+R` | Iniciar la grabación de pantalla. |
| `Super+Alt+B` | Recargar Ambxst. |
| `Super+Ctrl+Alt+B` | Cerrar Ambxst. |

### Workspaces

| Atajo | Acción |
| --- | --- |
| `Super+1…0` | Cambiar a los workspaces 1–10. |
| `Super+Shift+1…0` | Mover la ventana a los workspaces 1–10 y seguirla. |
| `Super+Alt+1…0` | Mover la ventana a los workspaces 1–10 de forma silenciosa. |
| `Super+Z` / `Super+X` | Cambiar al workspace relativo anterior/siguiente. |
| `Super+Shift+Z` / `Super+Shift+X` | Cambiar al workspace ocupado anterior/siguiente. |
| `Super+rueda abajo` / `Super+rueda arriba` | Cambiar al workspace ocupado anterior/siguiente. |
| `Super+Shift+V` | Mostrar u ocultar el workspace especial. |
| `Super+Alt+V` | Mover la ventana al workspace especial. |
| `Super+Ctrl+Alt+1…0` | Mover la columna a los workspaces 1–10 cuando se usa el layout `scrolling`. |

### Foco, movimiento y tamaño

| Atajo | Acción |
| --- | --- |
| `Super+↑/↓/←/→` | Mover el foco en la dirección indicada. |
| `Super+Ctrl+K/J/H/L` | Mover el foco arriba/abajo/izquierda/derecha. |
| `Super+Ctrl+Z/X` | Mover el foco a la izquierda/derecha. |
| `Super+Shift+↑/↓/←/→` | Mover la ventana en la dirección indicada. |
| `Super+Shift+K/J/H/L` | Mover la ventana arriba/abajo/izquierda/derecha. |
| `Super+Alt+↑/↓` o `Super+Alt+K/J` | Reducir/aumentar la altura de la ventana en 50 px. |
| `Super+Alt+←/→` o `Super+Alt+H/L` | Reducir/aumentar la columna en `0.1` en el layout `scrolling`. |
| `Super+Alt+Espacio` | Promover la columna activa en el layout `scrolling`. |
| `Super+Ctrl+Espacio` | Alternar el ajuste de la columna en el layout `scrolling`. |
| `Super+Shift+Espacio` | Alternar columna completa en el layout `scrolling`. |
| `Super+Ctrl+Alt+←/→` o `Super+Ctrl+Alt+H/L` | Intercambiar la columna hacia la izquierda/derecha. |
| `Super+botón izquierdo` + arrastre | Mover la ventana. |
| `Super+botón derecho` + arrastre | Redimensionar la ventana. |
| `Super+C` | Cerrar la ventana activa. |

### Hardware y tapa del notebook

| Tecla o evento | Acción |
| --- | --- |
| `XF86AudioPlay` / `XF86AudioMedia` | Alternar reproducción y pausa. |
| `XF86AudioPrev` / `XF86AudioNext` / `XF86AudioStop` | Pista anterior, siguiente o detener. |
| `XF86AudioRaiseVolume` / `XF86AudioLowerVolume` | Subir o bajar el volumen. |
| `XF86AudioMute` | Silenciar o restaurar el audio. |
| `XF86MonBrightnessUp` / `XF86MonBrightnessDown` | Subir o bajar el brillo. |
| `XF86Calculator` | Abrir la calculadora. |
| Cerrar la tapa | Bloquear la sesión y apagar las pantallas mediante DPMS. |
| Abrir la tapa | Encender las pantallas mediante DPMS. |

### Combinaciones declaradas en ambas capas

Hyprland carga los binds de Ambxst además de sus propios binds. Estas combinaciones aparecen en ambos archivos:

- `Super+C`, `Super+1…0`, `Super+Shift+1…0` y los arrastres con ratón repiten la misma función.
- Las teclas de volumen, brillo y reproducción también están definidas en ambas capas.
- `Super+L` solicita el bloqueo desde Hyprlock y desde Ambxst.
- `Super+V` tiene acciones distintas: Hyprland alterna el modo flotante y Ambxst abre el portapapeles.
- `Super` + rueda está definido en ambas capas, pero con convenciones de dirección distintas entre el bind nativo y el bind de workspace ocupado de Ambxst.

Esta sección describe las declaraciones versionadas; no presupone qué acción prevalece si el compositor rechaza, sustituye o ejecuta un bind duplicado.

## KDE Plasma / Project Nightjar

Fuente: `plasma/.config/kglobalshortcutsrc`

Estos atajos pertenecen a la configuración conservada bajo el checkpoint `plasma-v1.0.0`; no forman parte de la sesión Hyprland + Ambxst.

### Sesión, escritorios y vistas

| Atajo | Acción |
| --- | --- |
| `Meta+L` / `Screensaver` | Bloquear la sesión. |
| `Ctrl+Alt+Del` | Mostrar la pantalla de cierre de sesión. |
| `Meta+W` | Mostrar la vista general de KWin. |
| `Meta+G` | Mostrar la vista de cuadrícula. |
| `Ctrl+F9` / `Meta+F9` | Mostrar las ventanas del escritorio actual. |
| `Ctrl+F10` / `Meta+F10` / `Launch (C)` | Mostrar las ventanas de todos los escritorios. |
| `Ctrl+F7` / `Meta+F7` | Mostrar las ventanas de la aplicación actual. |
| `Meta+D` | Mostrar el escritorio. |
| `Meta+Ctrl+flechas` | Cambiar al escritorio adyacente. |
| `Ctrl+F1…F4` / `Meta+F1…F4` | Cambiar a los escritorios 1–4. |
| `Alt+Tab` / `Meta+Tab` | Recorrer las ventanas. |
| `Alt+Shift+Tab` / `Meta+Shift+Tab` | Recorrer las ventanas en sentido inverso. |

### Ventanas y mosaico

| Atajo | Acción |
| --- | --- |
| `Meta+T` | Abrir el editor de mosaico. |
| `Meta+flechas` | Situar la ventana en mosaico hacia arriba, abajo, izquierda o derecha. |
| `Meta+Alt+flechas` | Cambiar el foco a la ventana en la dirección indicada. |
| `Meta+Ctrl+Shift+flechas` | Mover la ventana al escritorio adyacente. |
| `Meta+Shift+←/→` | Mover la ventana a la pantalla anterior/siguiente. |
| `Meta+PgUp` / `Meta+PgDown` | Maximizar/minimizar la ventana. |
| `Meta+Backspace` | Restaurar la ventana. |
| `Alt+F3` | Abrir el menú de operaciones de la ventana. |
| `Alt+F4` | Cerrar la ventana. |
| `Meta+Ctrl+Esc` | Activar la herramienta para matar una ventana. |

Los atajos directos de KZones aparecen con valor `none` y, por tanto, no se documentan como activos.

### Plasma y aplicaciones

| Atajo | Acción |
| --- | --- |
| `Meta` / `Alt+F1` | Abrir el lanzador de aplicaciones. |
| `Meta+1…9` | Activar la entrada correspondiente del gestor de tareas. |
| `Meta+V` | Mostrar el portapapeles en la posición del ratón. |
| `Meta+Ctrl+X` | Mostrar el menú de acciones del portapapeles. |
| `Meta+Alt+P` | Mover el foco entre paneles. |
| `Meta+Q` | Mostrar el selector de actividades. |
| `Ctrl+F12` | Mostrar el dashboard/escritorio. |
| `Alt+W` | Abrir Skwd. |
| `Meta+Alt+K` | Cambiar a la siguiente distribución de teclado. |
| `Meta+Alt+L` | Volver a la última distribución de teclado usada. |
| `Meta+B` / tecla `Battery` | Cambiar el perfil de energía. |

Las teclas físicas de volumen, micrófono, reproducción, brillo, suspensión, hibernación y apagado también están asociadas a sus acciones homónimas en Plasma.

## Ghostty

Fuente: `.config/ghostty/config`

| Atajo | Acción |
| --- | --- |
| `Ctrl+Shift+↑/↓/←/→` | Crear un split en la dirección indicada. |
| `Ctrl+Alt+↑/↓/←/→` | Mover el foco al split en la dirección indicada. |
| `Ctrl+Alt+[` / `Ctrl+Alt+]` | Mover el foco al split anterior/siguiente. |
| `Ctrl+Shift+W` | Cerrar la superficie actual. |

## Yazi

Fuente: `yazi/.config/yazi/keymap.toml`

| Atajo | Acción |
| --- | --- |
| `Shift+Enter` | Abrir el menú interactivo «Abrir con…». |

## Notas

- `nano/.nanorc` contiene ejemplos de atajos comentados; no se consideran activos.
- `bash/.bashrc` contiene alias y funciones de shell, pero no define atajos de teclado.
- No se incluyen combinaciones predeterminadas de las aplicaciones salvo cuando aparecen explícitamente en los archivos versionados.

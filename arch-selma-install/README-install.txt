# Installation von arch Paketen, qicklisp und emacs-Paketen:

./install.sh

# nach Installation von quicklisp:

(ql:quickload "clhs")

### gnome3 Alt-Above_Tab deaktivieren:
### dconf-editor

# dann auf: /org/gnome/desktop/wm/keybindings/switch-group
# und  /org/gnome/desktop/wm/keybindings/switch-group-backward
' und dort "default" asuschalten und dann "Alt-Above_Tab" bzw. "Shift-Alt-Above_Tab" löschen.

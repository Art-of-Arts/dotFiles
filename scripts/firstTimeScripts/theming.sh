#!/bin/bash

if ! [[ -e "/tmp/rose-pine-pine" ]] then
  rm -rf /tmp/rose-pine-pine
  wget -qO- https://github.com/rose-pine/kvantum/raw/refs/heads/master/dist/rose-pine-pine.tar.gz | 7z x -tgzip -si -so | 7z x -si -ttar -o/tmp/
  echo "rose pine theme for kvantum is in /tmp/rose-pine-pine/"
else
  wget -qO- https://github.com/rose-pine/kvantum/raw/refs/heads/master/dist/rose-pine-pine.tar.gz | 7z x -tgzip -si -so | 7z x -si -ttar -o/tmp/
fi

THEME="rose-pine-gtk"
ICONS="Papirus"
FONT="Hack Nerd Font 10"
CURSOR="Kirispica"
CURSOR_SIZE=24

# gtk2
cat > ~/.config/gtkrc-2.0 <<EOF
gtk-theme-name="$THEME"
gtk-icon-theme-name="$ICONS"
gtk-font-name="$FONT"
gtk-cursor-theme-name="$CURSOR"
gtk-cursor-theme-size=$CURSOR_SIZE
EOF

# gtk3
mkdir -p ~/.config/gtk-3.0
cat > ~/.config/gtk-3.0/settings.ini <<EOF
[Settings]
gtk-theme-name=$THEME
gtk-icon-theme-name=$ICONS
gtk-font-name=$FONT
gtk-cursor-theme-name=$CURSOR
gtk-cursor-theme-size=$CURSOR_SIZE
EOF

# gtk4
mkdir -p ~/.config/gtk-4.0
cat > ~/.config/gtk-4.0/settings.ini <<EOF
[Settings]
gtk-theme-name=$THEME
gtk-icon-theme-name=$ICONS
gtk-font-name=$FONT
gtk-cursor-theme-name=$CURSOR
gtk-cursor-theme-size=$CURSOR_SIZE
EOF

echo "gtk theme is set to $THEME, with $ICONS icons, $FONT and $CURSOR cursor at $CURSOR_SIZE size"

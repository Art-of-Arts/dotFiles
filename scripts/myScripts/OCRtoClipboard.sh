#!/bin/bash
# Dependencies: tesseract

TEMPFILE="$(mktemp --suffix=.png)"

if [ -z "$1" ]; then
	LANG="chi_sim+chi_sim_vert+chi_tra+chi_tra_vert+eng+jpn+jpn_vert+kor+kor_vert+osd+pol+rus"
else
	LANG=$1
fi

echo "selected lang $LANG"

hyprshot -m region -o "$TEMPFILE" --freeze

file "$TEMPFILE"
ls -lh "$TEMPFILE"

TEXT=$(tesseract "$TEMPFILE" - -l "$LANG")
wl-copy "$TEXT"
# rm "$TEMPFILE"

# TEXT=$(spectacle -o /proc/self/fd/1 --background --nonotify | tesseract stdin stdout -l $LANG)

# qdbus6 org.kde.klipper /klipper org.kde.klipper.klipper.setClipboardContents "$TEXT"

#!/bin/bash

if command -v fuse3 >/dev/null 2>&1; then
  zenity --info --text="FUSE3 is al geïnstalleerd."
  exit 0
fi

pkexec bash -c "
pacman -Sy --noconfirm fuse3
"

zenity --info --text="FUSE3 is succesvol geïnstalleerd."

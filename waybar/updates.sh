#!/bin/bash
oficiais=$(checkupdates 2>/dev/null | wc -l)
aur=$(yay -Qua 2>/dev/null | wc -l)
total=$((oficiais + aur))
if [ "$total" -gt 0 ]; then echo "{\"text\": \"$total\", \"tooltip\": \"Oficiais: $oficiais | AUR: $aur\"}"; else echo "{\"text\": \"\", \"tooltip\": \"Sistema atualizado!\"}"; fi

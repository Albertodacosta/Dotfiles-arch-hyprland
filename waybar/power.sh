#!/bin/bash
escolha=$(echo -e " Desligar\n Reiniciar\n Suspender\n Sair (Logout)" | wofi --dmenu --prompt "Opções de Energia:" --width 300 --height 230)
case "$escolha" in
    " Desligar") systemctl poweroff ;; " Reiniciar") systemctl reboot ;; " Suspender") systemctl suspend ;; " Sair (Logout)") hyprctl dispatch exit ;;
esac

### 🌌 Arch Linux - Muryōkūsho (Vazio Infinito) Dotfiles

Este repositório contém os meus "dotfiles" organizados para um ambiente de desenvolvimento minimalista e de alta performance rodando **Arch Linux** com **Hyprland** (Wayland).

A estética foi meticulosamente inspirada na Expansão de Domínio "Vazio Infinito" (Gojo Satoru - Jujutsu Kaisen), utilizando alto contraste, fundos em preto abissal translúcido e destaques em azul ciano. A filosofia é clara: um sistema construído do zero, estruturado de forma modular e livre de distrações, perfeito para codificar ou trabalhar em projetos acadêmicos.

## 💻 Hardware & Otimização

- **Máquina:** ThinkPad (Teclado ABNT2, variante ThinkPad T495).
- **Gestão de Energia:** TLP (Bateria configurada com limite rígido de carga a 80% para preservação da vida útil).
- **Inatividade:** `hypridle` gerencia o DPMS e o bloqueio seguro, incluindo correção de *race condition* (`sleep 1`) para evitar que a máquina retorne da suspensão desbloqueada.

## 🛠️ O Arsenal (Stack Principal)

- **Window Manager:** Hyprland
- **Barra de Status:** Waybar (Customizada em pílulas flutuantes via CSS com scripts interativos).
- **Terminal:** Kitty + Starship (Prompt Powerline minimalista).
- **Menu de Aplicativos:** Wofi (Estilizado via CSS).
- **Tela de Bloqueio:** Hyprlock (Vidro fosco, blur pesado e relógio central).
- **Gerenciador de Login (DM):** SDDM (Tema Catppuccin Macchiato via QtQuick gerido via `sddm-kcm`).
- **Notificações:** SwayNC.
- **Screenshots:** Flameshot (Modo background ativado via `flameshot.ini`, escondido da bandeja).
- **Fonte Padrão:** JetBrains Mono Nerd Font.

## 📁 Estrutura do Repositório

Todos os arquivos foram renomeados e organizados para espelhar perfeitamente a estrutura nativa do `~/.config/` do Linux, facilitando a criação de links simbólicos em lote.

- `/hypr/` → Core do sistema (Hyprland, Idle, Lock, Paper).
- `/waybar/` → Configurações em JSONC, CSS e scripts de execução (Updates AUR e Power Menu Wofi).
- `/wofi/` → Estilo visual e comportamento do menu.
- Outras pastas contêm configurações individuais (Terminal, Bateria, Screenshots).

## ⌨️ Atalhos de Sobrevivência (Keybindings)

A tecla Mod principal está configurada para o `SUPER` (Windows).

| Teclas | Ação |
| --- | --- |
| `SUPER + Q` | Abre o Terminal (Kitty) |
| `SUPER + R` | Abre o Menu de Aplicativos (Wofi) |
| `SUPER + E` | Abre o Gerenciador de Arquivos (Nautilus) |
| `SUPER + C` | Mata a janela ativa |
| `SUPER + V` | Modo Janela Flutuante |
| `SUPER + N` | Central de notificações (SwayNC) |
| `Print` | Captura de tela com interface de edição (Flameshot) |
| `Shift + Print` | Captura inteira direta para a área de transferência |

## 🚀 Restauração pós-formatação

Caso precise formatar o PC, aqui está a ordem exata de pacotes e comandos para clonar este ecossistema:

### 1. Instalação dos Pacotes

```bash
# Core Visual
sudo pacman -S hyprland waybar kitty wofi starship hyprlock hypridle tlp sddm plasma-desktop sddm-kcm

# Ferramentas
sudo pacman -S swaync libnotify flameshot playerctl pacman-contrib polkit-gnome network-manager-applet blueman
```
### 2. O Toque Final (Restauro dos Symlinks)
Clone este repositório para ~/Documentos/Minhas_Configs. Em seguida, crie as pastas no sistema e injete os links simbólicos rodando os comandos abaixo:

Preparando o terreno:

Bash
mkdir -p ~/.config/hypr ~/.config/waybar ~/.config/wofi ~/.config/kitty ~/.config/flameshot
Criando os Links (Symlinks):

Bash
ln -sf ~/Documentos/Minhas_Configs/hypr/* ~/.config/hypr/
ln -sf ~/Documentos/Minhas_Configs/waybar/* ~/.config/waybar/
ln -sf ~/Documentos/Minhas_Configs/wofi/* ~/.config/wofi/
ln -sf ~/Documentos/Minhas_Configs/kitty/kitty.conf ~/.config/kitty/kitty.conf
ln -sf ~/Documentos/Minhas_Configs/starship/starship.toml ~/.config/starship.toml
ln -sf ~/Documentos/Minhas_Configs/flameshot/flameshot.ini ~/.config/flameshot/flameshot.ini

# O TLP precisa de root pois fica na pasta /etc/

sudo ln -sf ~/Documentos/Minhas_Configs/tlp/tlp.conf /etc/tlp.conf

Não esqueça de garantir permissão de execução aos scripts da barra: chmod +x ~/.config/waybar/*.sh.

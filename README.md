# Dotfiles


## Setup review
|  |  |
|--|--|
| OS | Manjaro |
| Desktop Environment | XFCE |
| Desktop Manager | gdm + gdm-tools-git? |
| Window Manager | xfce + devilspie? |
| Compositor | xfce-compositor |
| Panel | xfce-panel |
| Navigation | rofi + power-menu |
| File Manager | Thunar |
| Terminal | Kitty |
| Shell | zsh + p10k |
| Theme | Gruvbox Material |
| Dot Files Manager | chezmoi |


## Packages

### Base
**Pacman:**
chezmoi, kitty, zsh, p10k
make, base-devel, yay, exa, neofetch, tig, github-cli, ncdu,
ttf-jetbrains-mono,
vim, nvim, npm, docker, docker-compose,
Telegram, Discord, qbitTorrent, VLC, Flameshot  
**AUR:** megasync, rofi-power-menu, skypeforlinux-stable-bin, slack-desktop,
spotify, rust, spotify-adblock  
**Snap:** code

### Work Edition
**Pacman:** dbeaver, sqlitebrowser, pgadmin, Opera  
**AUR:** google-chrome, libpdfium-nojs

### Home Edition
**Pacman:** krita, jupyter-notebook, libreoffice-still


## OS Installing Guide

### 1. Download [Manjaro XFCE ISO](https://manjaro.org/downloads/official/xfce/).
### 2. Burn the ISO on USB stick

**On Linux:**  
```shell
sudo dd bs=4M if=[/path/to/manjaro.iso] of=/dev/sd[drive letter] status=progress oflag=sync
```  
Where `[drive letter]` is the letter of your removable device. Please note that it is the **device** (e.g. /dev/sdb), and **not** the partition number (e.g. /dev/sdb1).  
To find which drive letter it might be write:
```shell
sudo fdisk -l 
```

**On Windows:**  
Use [Rufus](http://rufus.ie/en/).

### 3. Boot Manjaro Live CD and install.
**IMPORTANT** Don't forget to encrypt disk. Set no password for root and short password for user.

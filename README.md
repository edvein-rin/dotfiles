# Dotfiles :gear:


## Setup overview
|||
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

### Base :computer:
**Pacman:**
chezmoi, kitty, zsh, p10k
make, base-devel, yay, exa, neofetch, tig, github-cli, ncdu,
ttf-jetbrains-mono,
vim, nvim, npm, docker, docker-compose,
Telegram, Discord, qbitTorrent, VLC, Flameshot  
**AUR:** megasync, rofi-power-menu, skypeforlinux-stable-bin, slack-desktop,
spotify, rust, spotify-adblock  
**Snap:** code

### Work Edition :briefcase:
**Pacman:** dbeaver, sqlitebrowser, pgadmin, Opera  
**AUR:** google-chrome, libpdfium-nojs

### Home Edition :desktop_computer: 	
**Pacman:** krita, jupyter-notebook, libreoffice-still


## OS Installing Guide

### 1. Download [Manjaro XFCE ISO](https://manjaro.org/downloads/official/xfce/).
### 2. Burn the ISO on USB stick:

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

### 3. Boot in Manjaro Live CD.
### 4. Install OS (Manjaro Welcome):
- Locale is **ja** :jp: and keyboard is **English (US) Default** :us:
- Encrypt a disk! :lock:  
— *Why?*  
— That's your main protection measure from data being stolen if someone has physical access to your PC.
- Make boot, swap, root and home partitions! :carpentry_saw:   
Don't forget labels and that order of partitions is important. Also leave space for Windows if needed.  

| Label | File System | Mount Point | Size | Flags |
| -- | -- | -- | -- | -- |
| Boot | fat32 | /boot/efi | 512 MiB | boot, esp |
| Swap | linux-swap | | 4 GiB | swap |
| Manjaro | ext4 | / | | |
| Home | ext4 | /home | | |
- Set no password for root! :unlock:  
— *Why?*  
— [That's why.](https://help.ubuntu.com/community/RootSudo#Advantages_and_Disadvantages)  
- Set a short password for user! :key:  
— *Why?*  
— If someone has access to your turned on PC you already fucked up and no strong password will ever help. But you will be typing a long password for every sudo you need.  
— *Then what's the point of setting password at all?*  
— Safety from your curious comrads.



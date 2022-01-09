### Dotfiles for Manjaro Setup :gear:

Powered by [chezmoi](https://github.com/twpayne/chezmoi).

### Data
```go
[data.flags]
  is_for_work
  is_personal

[data]
  name
  username
  email

[data.gitconfig]
  name
  email
 
[data.packages]
  arch
  aur
  snap
```

### Folder Tree Structure

```go
~/  
├── .config  
├── .local  
├── .ssh -> ~/cloud/.ssh  
├── .vpn -> ~/cloud/.vpn  
├── code  
├── cloud  
├── documents  
├── downloads  
├── pictures  
├── scripts  
│   ├── git  
│   └── os-setup  
├── univ  
└── work  

~/.config/  
├── autostart  
├── flameshot  
├── kitty  
├── neofetch  
├── nvim  
├── pamac  
└── xfce4  

~/cloud/  
├── .config  
│   └── surfing-keys  
├── .ssh  
└── .vpn  
```

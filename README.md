### Dotfiles for Manjaro Setup :gear:

Powered by [chezmoi](https://github.com/twpayne/chezmoi).

### Installation

Run `sh ./install.sh` and follow its instructions.

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

### Packages

Stored at [`[data.packages]`](https://github.com/edvein-rin/dotfiles/blob/main/home/.chezmoi.toml.tmpl#L23) table at `.chezmoi.toml.templ`:
```go
[data.packages]
  arch = """
    base-devel
    chezmoi
    lastpass-cli
    ...
  """
  ...
```

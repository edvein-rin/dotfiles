### Dotfiles for Manjaro Setup :gear:

Powered by [chezmoi](https://github.com/twpayne/chezmoi).

### Installation

Run `sh ./install.sh` and follow its instructions.

### TODO
1. Automate Firefox STG sync on each startup.
2. Remove simple Spotify from drun.
3. Configure git pager Delta.
4. Autostart apps based on `.data.is_for_work`.
5. Customize separate from nvim vim config for simple file edit.
6. Colorize logging of what's happening.
7. Remove a part of `config/xfce5/xfconf/xfce-perchannel-xml/displays.xml` from chezmoi that always updates. Same with Thunar.

### Data
```js
[data.flags]
  is_dev
  is_for_work
  is_personal = !is_for_work

[data]
  trash_nickname
  trash_email

  personal_nickname
  personal_username
  personal_email

  business_nickname
  business_username
  business_email

  name
  nickname = is_for_work ? business_nickname : personal_nickname
  username = is_for_work ? business_username : personal_username
  email = is_for_work ? business_email : personal_email

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
├── documents -> ~/cloud/documents  
├── downloads  
├── pictures -> ~/cloud/pictures  
│   └── .config  
├── scripts  
├── university -> ~/cloud/university  
└── work  

~/.config/  
├── autostart  
├── flameshot  
├── kitty  
├── neofetch  
├── nvim  
├── pamac  
├── Thunar  
└── xfce4  

~/cloud/  
├── .vpn  
├── .ssh  
├── documents  
├── pictures  
└── university  
```

### Packages

Stored at [`[data.packages]`](https://github.com/edvein-rin/dotfiles/blob/main/home/.chezmoi.toml.tmpl#L23) table at `.chezmoi.toml.templ`:
```go
[data.packages]
  arch = """
    base-devel
    chezmoi
    bitwarden-cli
    ...
  """
  ...
```

### Dotfiles for Manjaro Setup :gear:

Powered by [chezmoi](https://github.com/twpayne/chezmoi).

### Installation

Run `sh ./install.sh` and follow its instructions.

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

[data.neofetch]
  image_source

[data.bitwarden]
  email
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
├── scripts  
├── university -> ~/cloud/university  
└── work  

~/cloud/  
├── .vpn  
├── .ssh  
├── documents  
├── pictures  
│   └── .config  
└── university  
```

### Packages

Stored at [`[data.packages]`](https://github.com/edvein-rin/dotfiles/blob/main/home/.chezmoi.toml.tmpl#L47) table at `.chezmoi.toml.templ`:
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

### TODO
1. Remove simple Spotify from drun.
2. Configure git pager Delta.
3. Autostart apps based on `.data.is_for_work`.
4. Customize separate from nvim vim config for simple file edit.
5. Colorize logging of what's happening.
6. Remove a part of `config/xfce5/xfconf/xfce-perchannel-xml/displays.xml` from chezmoi that always updates. Same with Thunar.
7. Fix sync-stg.service (does nothing or crashes).
8. Update SurfingKeys config due to addon update.
9. Script + alias for starting VPN.

### Dotfiles for Manjaro Setup :gear:

Powered by [chezmoi](https://github.com/twpayne/chezmoi).

### Installation

Run `sh ./install.sh` and follow its instructions.

### TODO
1. Logging of what's happening.
2. Configure Delta.
3. Remove simple Spotify from drun.
4. Customize vim for simple file edit and nvim for more complex.
5. Fix not ability to type H, J, K, L in terminal.

### Data
```js
[data.flags]
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
├── Thunar  
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
    bitwarden-cli
    ...
  """
  ...
```

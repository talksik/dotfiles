
## Clone
```bash
cd ~
git init
git remote add origin [my-repo]
git fetch
git checkout origin/master -ft
```

## Dependencies
```bash
$ sudo apt install net-tools
$ sudo apt install fzf picom feh xclip
$ sudo apt install polybar
# for i3 install, make sure you get version > 4.22 for gaps to work

```

## Nix
1. install nix based on their website
2. `nix-shell` from $HOME to launch shell based on `shell.nix`

## nvim setup
```bash
# get neovim from whereever but make sure that its a newer version
$ sudo snap install neovim --classic
$ git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
$
```

#### Details
All plugin related remaps are in their respective files.


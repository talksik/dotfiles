
# talksik dotfiles
# Clone
```
cd ~
git init
git remote add origin [my-repo]
git fetch
git checkout origin/master -ft
```

## Nix
1. install nix based on their website
2. `nix-shell` from $HOME to launch shell based on `shell.nix`

## nvim setup
1. run `nix-shell` from $HOME. The `shell.nix` in this repo should have neovim, ripgrep, and packer as dependencies.
2. open nvim anywhere. `nvim .`
3. run `:PackerSync`
 - if this doesn't work, try this to get nvim to load packer: `git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim`
4. `:q` and then again `nvim .`

#### Details
All plugin related remaps are in their respective files.

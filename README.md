
# talksik dotfiles
## Nix commands
- `nix-shell` from $HOME to launch shell based on `shell.nix`


## nvim setup
1. run `nix-shell` from $HOME. The `shell.nix` in this repo should have neovim, ripgrep, and packer as dependencies.
2. open nvim anywhere. `nvim .`
3. run `:PackerSync`
4. `:q` and then again `nvim .`

#### Details
All plugin related remaps are in their respective files.

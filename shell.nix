{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/06278c77b5d162e62df170fec307e83f1812d94b.tar.gz") {} }:

pkgs.mkShell {
  buildInputs = [
    pkgs.which
    pkgs.htop
    pkgs.zlib
    pkgs.git
    pkgs.gh
    pkgs.curl
    pkgs.python39
    pkgs.podman
    pkgs.tmux
    pkgs.go
    pkgs.postgresql
    pkgs.neovim
    pkgs.ripgrep
    pkgs.packer
    pkgs.nodejs
    pkgs.cmake
    pkgs.rustc
    pkgs.cargo
    pkgs.rustup
    pkgs.tldr
  ];

  shellHook = ''
    echo hello
  '';

  MY_ENVIRONMENT_VARIABLE = "world";
}


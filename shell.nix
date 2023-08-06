{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/9462344318b376e157c94fa60c20a25b913b2381.tar.gz") { } }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    which
    curl
    htop
    zlib
    git
    gh
    curl
    podman
    tldr
    tmux
    neovim
    packer
    ripgrep

    nodejs

    postgresql

    clang
    cmake
    pkg-config
    meson
    ninja

    rustc
    cargo
    rustup

    go
    protobuf3_20
    protoc-gen-go
    protoc-gen-go-grpc
    sqlc

    go-task

    fzf
  ];

  shellHook = ''
    echo hello
    echo "git:  $(git  --version)"

    mkdir -p code
    cd code
    tmux
  '';

  MY_ENVIRONMENT_VARIABLE = "world";
}


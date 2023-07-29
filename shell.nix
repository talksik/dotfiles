{ pkgs ? import (fetchTarball "https://github.com/NixOS/nixpkgs/archive/9462344318b376e157c94fa60c20a25b913b2381.tar.gz") { } }:

pkgs.mkShell {
  buildInputs = [
    pkgs.which
    pkgs.curl
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
    pkgs.meson
    pkgs.protobuf3_20
    pkgs.protoc-gen-go
    pkgs.protoc-gen-go-grpc
    pkgs.sqlc
    pkgs.go-task
    pkgs.grpcurl
    pkgs.gst_all_1.gstreamer
    pkgs.gst_all_1.gst-plugins-base
    (pkgs.gst_all_1.gst-plugins-good.override {
      # can only have one of these
      qt6Support = true;
      #qt5Support = true;
    })
    pkgs.gst_all_1.gst-plugins-bad
    pkgs.gst_all_1.gst-plugins-ugly
    pkgs.gst_all_1.gst-libav
    pkgs.gst_all_1.gst-vaapi

    pkgs.qt6.full
  ];

  shellHook = ''
    echo hello
  '';

  MY_ENVIRONMENT_VARIABLE = "world";
}


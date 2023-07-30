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
    python39
    podman
    tmux
    go
    clang
    postgresql
    neovim
    ripgrep
    packer
    nodejs
    cmake
    rustc
    cargo
    rustup
    tldr
    meson
    protobuf3_20
    protoc-gen-go
    protoc-gen-go-grpc
    sqlc
    go-task
    grpcurl

    gst_all_1.gstreamer
    gst_all_1.gst-plugins-base
    (pkgs.gst_all_1.gst-plugins-good.override {
      # can only have one of these
      qt6Support = true;
      #qt5Support = true;
    })
    gst_all_1.gst-plugins-bad
    gst_all_1.gst-plugins-ugly
    gst_all_1.gst-libav
    gst_all_1.gst-vaapi

    qt6.full
    mesa
    libGL
    gst_all_1.gstreamermm
    libxkbcommon # for qt

    fzf
  ];

  nativeBuildInputs = with pkgs; [
    pkg-config
  ];

  shellHook = ''
    echo hello
  '';

  MY_ENVIRONMENT_VARIABLE = "world";

  # for runtime linking of libraries
  #LD_LIBRARY_PATH = "${stdenv.lib.makeLibraryPath buildInputs}:${LD_LIBRARY_PATH}";
}


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
    tmux
    go
    clang
    postgresql
    packer
    ripgrep
    neovim
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

    fzf

    python311
    python311Packages.pyside6
    python311Packages.xapp
    python311Packages.pip
    python311Packages.shiboken6
    qt6.full
  ];

  shellHook = ''
    echo hello
    echo "git:  $(git  --version)"
    echo "htop: $(htop --version)"
    echo "python: $(python --version)"
    echo "gstreamer: $(gst-inspect-1.0 --version)"
  '';

  MY_ENVIRONMENT_VARIABLE = "world";
}


# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lg='lazygit'

export HOME=/home/talksik
export PATH=$PATH:~/Qt/5.15.14/gcc_64/bin/:~:/usr/local/go/bin:~/go/bin:~/code/flutter/bin:$HOME/.local/bin:$HOME/code/flutter-elinux/bin/
export QMAKE=~/Qt/5.15.14/gcc_64/bin
# needed so that gstreamer building from source can reference Qt installation
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:~/Qt/5.15.14/gcc_64/lib/pkgconfig/

export KUBECONFIG=~/.kube/config

source ~/.bash-powerline.sh

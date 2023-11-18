# some more ls aliases
alias ls='ls --color=auto'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'
alias lg='lazygit'

export HOME=/home/talksik
export PATH=/usr/local/go/bin:$PATH:~/Qt/5.15.14/gcc_64/bin/:~:~/go/bin:~/code/flutter/bin:$HOME/.local/bin:$HOME/code/flutter-elinux/bin/:$HOME/.pub-cache/bin
export QMAKE=~/Qt/5.15.14/gcc_64/bin
# needed so that gstreamer building from source can reference Qt installation
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:~/Qt/5.15.14/gcc_64/lib/pkgconfig/:/usr/lib/x86_64-linux-gnu/pkgconfig/

export KUBECONFIG=~/.kube/config

source ~/.bash-powerline.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/talksik/Downloads/google-cloud-sdk/path.bash.inc' ]; then . '/home/talksik/Downloads/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/talksik/Downloads/google-cloud-sdk/completion.bash.inc' ]; then . '/home/talksik/Downloads/google-cloud-sdk/completion.bash.inc'; fi

# chatgpt
alias s='tgpt'

[ -f ~/.inshellisense/key-bindings.bash ] && source ~/.inshellisense/key-bindings.bash

shopt nocaseglob # ignore case when matching
shopt cdspell # fix common spelling mistakes
shopt -s autocd # for bash

take () {
    mkdir -p "$1" && cd "$1"
}

lfcd() {
    dir=$(lf -print-last-dir "$@")
    while ! cd "$dir" 2> /dev/null
    do
        dir=$(dirname "$dir")
    done
}

export NB_EDITOR=nvim

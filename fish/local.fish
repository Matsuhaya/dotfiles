# write your settings!

# for composer
# set PATH $PATH $HOME/.composer/vendor/bin
# set -x COMPOSER_MEMORY_LIMIT 4G

# for gem
# set -x GEM_HOME $HOME/.gem
# set -x PATH $PATH $GEM_HOME/bin

# for golang
set -x GOPATH $HOME/go
set -x PATH $PATH $GOPATH/bin

# for gcloud
# set -x PATH $PATH $HOME/google-cloud-sdk/bin

# colorrc
# set -x PATH $PATH (brew --prefix coreutils)/libexec/gnubin
# bass (dircolors ~/.colorrc)

# npm
# set -x PATH $HOME/.npm-global/bin $PATH

# cask
# set -x PATH $HOME/.cask/bin $PATH

# for goenv
# set -x GOENV_ROOT $HOME/.goenv
# set -x PATH $PATH $GOENV_ROOT/bin
# source (goenv init - | psub)
# set -x PATH $PATH $GOENV_ROOT/bin
# set -x PATH $PATH $GOPATH/bin

# for rbenv
# set -x PATH $PATH $HOME/.rbenv/bin
# source (rbenv init - | psub)

# for pyenv
set -x PYENV_ROOT $HOME/.pyenv
set -x PATH $PATH $PYENV_ROOT/bin
source (pyenv init - | psub)

# nodebrew
set -x PATH $PATH $HOME/.nodebrew/current/bin

# roswell
# set -x PATH $PATH $HOME/.roswell/bin

# cargo
# set -x PATH $PATH $HOME/.cargo/bin

# mac
# set -x PATH $PATH /usr/local/sbin
# set -xg LANG en_US.UTF-8
# set -xg LC_ALL en_US.UTF-8
# set -xg OBJC_DISABLE_INITIALIZE_FORK_SAFETY YES

# direnv
# eval (direnv hook fish)

# nix
# set -x PATH $PATH $HOME/.nix-profile/bin
# set -x NIX_PATH nixpkgs=$HOME/.nix-defexpr/channels/nixpkgs

# android studio
# set -x ANDROID_HOME $HOME/Android/Sdk
# set -x PATH $PATH $ANDROID_HOME/emulator
# set -x PATH $PATH $ANDROID_HOME/tools
# set -x PATH $PATH $ANDROID_HOME/tools/bin
# set -x PATH $PATH $ANDROID_HOME/platform-tools

# java
# set -x JAVA_HOME /usr/lib/jvm/java-1.11.0-openjdk-amd64

# openssl
# set -x PATH $PATH /usr/local/opt/openssl/bin

# alias emacs 'emacs -nw'
# alias gnucash 'env LANGUAGE=ja_JP.UTF-8 LANG=ja_JP.UTF-8 LC_ALL=ja_JP.UTF-8 gnucash'
# alias ss 'open /System/Library/CoreServices/ScreenSaverEngine.app'
# alias ls 'gls --color'
# alias sbcl 'rlwrap sbcl'
# alias pbcopy 'xclip -selection c'
# alias pbpaste 'xclip -selection c -o'
# alias make 'make -j'
#!/usr/bin/env bash
set -ue

link_to_homedir() {
  command echo "backup old dotfiles..."
  if [ ! -d "$HOME/.dotbackup" ];then
    command echo "$HOME/.dotbackup not found. Auto Make it"
    command mkdir "$HOME/.dotbackup"
  fi

  local script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P)"
  local dotdir=$(dirname ${script_dir})
  if [[ "$HOME" != "$dotdir" ]];then
    for f in $dotdir/.??*; do
      [[ `basename $f` == ".git" ]] && continue
      [[ `basename $f` == ".bin" ]] && continue
      [[ `basename $f` == ".gitignore" ]] && continue

      # -L: ファイルがシンボリックリンクの時
      if [[ -L "$HOME/`basename $f`" ]];then
        command rm -f "$HOME/`basename $f`"
      fi
      # -e: ファイルが存在する時
      if [[ -e "$HOME/`basename $f`" ]];then
        command mv "$HOME/`basename $f`" "$HOME/.dotbackup"
      fi
      command ln -snf $f $HOME
    done

    # fish系
    # Todo: delete directly or symboliclink 
    echo "fish系"
    command ln -snf ~/dotfiles/fish ~/.config/fish

    echo "fishパッケージマネージャーfisherで管理されているもの"
    command ln -snf ~/dotfiles/fisher ~/.config/fisher

    #Brewfile
    echo "Homebrew"
    command ln -snf ~/dotfiles/Brewfile ~/Brewfile

    #starship
    command ln -snf ~/dotfiles/starship.toml ~/.config/starship.toml
    
  else
    command echo "same install src dest"
  fi
}

link_to_homedir
git config --global include.path "~/.gitconfig_shared"
command echo "Install completed!!!!"
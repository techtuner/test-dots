#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_FOLDER="~/.config"
. $SCRIPT_DIR/utils.sh

copy_fonts(){
  sudo cp -r ../fonts/"Berkeley Mono Nerd Font" /usr/share/fonts/opentype
  sudo cp -r ../fonts/"DankMono Nerd Font" /usr/share/fonts/opentype
}


copy_files(){
  info "Copying the required config files to the respective places"
cp -r ../configs/i3/ "$CONFIG_FOLDER"
cp -r ../configs/tmux/ "$CONFIG_FOLDER"
cp -r ../configs/kitty/ "$CONFIG_FOLDER"
cp -r ../configs/polybar/ "$CONFIG_FOLDER"
cp -r ../configs/picom/ "$CONFIG_FOLDER"
cp -r ../configs/code/* "$CONFIG_FOLDER/Code/User"
cp -r ../configs/nvim "$CONFIG_FOLDER"
cp ../configs/starship/starship.toml "$CONFIG_FOLDER"
cp -r ../configs/wezterm/ "$CONFIG_FOLDER"
cp -r ../configs/zsh ~
cp .zshrc ~

cp -r ../wallpapers/ ~/Pictures/

}

executing_files(){
  sudo chmod +x $CONFIG_FOLDER/i3/*.sh
  sudo chmod +x $CONFIG_FOLDER/polybar/scripts/*.sh
  sudo chmod +x $CONFIG_FOLDER/polybar/launch.sh

  echo "exec zsh" >> ~/.bashrc
  source ~/.bashrc
}

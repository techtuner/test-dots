#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. $SCRIPT_DIR/utils.sh

update_system(){
  info "Updating System"
  sudo apt install --fix-broken -y
  sudo apt update -y
  sudo apt full-upgrade -y
  sudo apt dist-upgrade -y
  sudo apt autoremove -y
}

apt_package_install(){
  apps=(
    "git",
    "curl",
    "wget",
    "lightdm",
    "net-tools",
    "dconf-editor",
    "build-essential",
    "software-properties-common",
    "procps",
    "zathura",
    "file",
    "gnupg",
    "python3",
    "python3-pip",
    "python3-venv",
    "tmux",
    "make",
    "cmake",
    "fzf",
    "zsh",
    "ripgrep",
    "fd-find",
    "zoxide",
    "bat",
    "gcc",
    "gdb",
    "adb",
    "kitty",
    "cargo",
    "golang",
    "gh",
    "code",
    "obsidian",
    "i3",
    "i3-wm",
    "dmenu",
    "polybar",
    "picom",
    "rofi",
    "wofi",
    "feh",
    "pulseaudio",
    "pipewire"
    )
    for app in "${apps[@]}"; do
      info "Installing $app"
      sudo apt install $app -y
    success "Successfully installed $app"
    done
}

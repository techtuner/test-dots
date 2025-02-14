#!/bin/bash

. scripts/utils.sh
. scripts/apps.sh
. scripts/vscode_extensions.sh
. scripts/config.sh
. scripts/tools.sh

info "Dotfiles installation has begun"

read -p "Install Apps? [y/n] " install_apps

if [[ "$install_apps" == "y" ]]; then
  printf "\n"
  info "===================="
  info "Update System"
  info "===================="

  sudo mkdir -p /etc/apt/keyrings
  wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
  && sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
  && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
  curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash
  update_system


  printf "\n"
  info "===================================="
  info "Installing the Apps from Apt sources"
  info "===================================="

  apt_package_install
  cargo install eza rustscan urlencode

  code&

  printf "/n"
  info "===================="
  info "Configuring"
  info "===================="

  copy_fonts
  mkdir -p ~/workspace
  mkdir -p ~/tools
  copy_files
  executing_files
  install_vscode_extension
  install_tools
fi

success "The machine has been configured with the required config"


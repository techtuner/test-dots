#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

. $SCRIPT_DIR/utils.sh

install_vscode_extension(){

  info "Installing Visual Studio Code Extensions...."

  extensions=(
  "formulahendry.auto-close-tag",
  "formulahendry.auto-rename-tag",
  "formulahendry.auto-complete-tag",
  "aaron-bond.better-comments",
  "antfu.icons-carbon",
  "formulahendry.code-runner",
  "vadimcn.vscode-lldb",
  "naumovs.color-highlight",
  "ms-azuretools.vscode-docker",
  "editorconfig.editorconfig",
  "usernamehw.errorlens",
  "dbaeumer.vscode-eslint",
  "golang.go",
  "kisstkondoros.vscode-gutter-preview",
  "yzhang.markdown-all-in-one",
  "pkief.material-icon-theme",
  "christian-kohler.path-intellisense",
  "ms-vscode.powershell",
  "esbenp.prettier-vscode",
  "ms-python.python",
  "rust-lang.rust-analyzer",
  "redhat.vscode-yaml",
  "twxs.cmake",
  "Jaakko.black"
)

for extension in "${extensions[@]}"; do
  code --install-extension $extension
done

success "Visual Studio extensions installed properly"
}
}

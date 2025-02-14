#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
TOOLS_DIR=$HOME/tools
GIT_TOOLS_DIR=$TOOLS_DIR/GitTools
. $SCRIPT_DIR/utils.sh

install_tools(){
  cd $TOOLS_DIR
  info "Installing Kiterunner"
  git clone https://www.github.com/assetnote/kiterunner
cd $TOOLS_DIR/kiterunner
sudo make build
sudo ln -s $TOOLS_DIR/kiterunner/dist/kr /usr/bin/kr
success "Installed Kiterunner: Usage [kr]"
sleep 10s
clear
cd $TOOLS_DIR

info "Installing Git Tools"
git clone https://github.com/internetwache/GitTools
cd $GIT_TOOLS_DIR/Dumper/
sudo chmod +x gitdumper.sh
sudo ln -s $GIT_TOOLS_DIR/Dumper/gitdumper.sh /usr/bin/gitdumper
success "Installed Git Dumper: Usage [gitdumper]"
sleep 10s
cd $GIT_TOOLS_DIR/Finder/
pip install -r requirements.txt
sudo chmod +x gitfinder.py
sudo ln -s $GIT_TOOLS_DIR/Finder/gitfinder.py /usr/bin/gitfinder
success "Installed Git Finder: Usage [gitfinder]"
sleep 10s
cd $GIT_TOOLS_DIR/Extractor/
sudo chmod +x extractor.sh
sudo ln -s $GIT_TOOLS_DIR/Extractor/extractor.sh /usr/bin/gitextractor
success "Installed Git Extractor: Usage [gitextractor]"
sleep 10s
clear
cd $TOOLS_DIR

info "Installing pspy"
wget https://github.com/DominicBreuker/pspy/releases/download/v1.2.1/pspy64
sudo chmod +x ./pspy64
sudo ln -s $TOOLS_DIR/pspy64 /usr/bin/pspy
success "Installed PSPY: Usage [pspy]"
sleep 10s
clear

cd %TOOLS_DIR

info "Installing Go tools"
go install github.com/fullstorydev/grpcurl/cmd/grpcurl@latest
go install github.com/fullstorydev/grpcui/cmd/grpcui@latest
go install github.com/ropnop/kerbrute@latest
go install github.com/tomnomnom/assetfinder@latest
sudo ln -s ~/go/bin/kerbrute /usr/bin/kerbrute
sudo ln -s ~/go/bin/grpcui /usr/bin/grpcui
sudo ln -s ~/go/bin/grpcurl /usr/bin/grpcurl
sudo ln -s ~/go/bin/assetfinder /usr/bin/assetfinder
sucess "Installed some of the Go Tools"
sleep 10s
clear
cd $TOOLS_DIR

info "Installing Linpeas Script"
wget https://github.com/carlospolop/PEASS-ng/releases/download/20240204-ab87b191/linpeas.sh
sudo chmod +x linpeas.sh
sudo ln -s $TOOLS_DIR/linpeas.sh /usr/bin/linpeas
success "Installed Linpeas"
sleep 10s
clear
cd $TOOLS_DIR

info "Installing Neovim"
wget https://github.com/neovim/neovim/releases/download/v0.10.4/nvim-linux-x86_64.appimage -O nvim.appimage
sudo chmod +x nvim.appimage
sudo ln -s $TOOLS_DIR/nvim.appimage /usr/bin/nvim
sucess "Installed Neovim"
}

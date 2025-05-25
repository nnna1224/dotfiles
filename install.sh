#!/bin/bash

# Get script dir
SCRIPT_DIR=$(cd $(dirname $0); pwd)

# Install base packages
apt update
apt -y upgrade
apt install -y bash \
    build-essential \
    git \
    curl \
    tmux \
    net-tools \
    iputils-ping \
    ripgrep \
    fonts-ipafont-gothic \
    fonts-ipafont-mincho \
    locales \
    && locale-gen ja_JP.UTF-8 \
    && echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc \

# Install neovim in latest version
cd /usr/local/bin
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x ./nvim-linux-x86_64.appimage
./nvim-linux-x86_64.appimage --appimage-extract
ln -s /usr/local/bin/squashfs-root/AppRun /usr/bin/nvim

# Get package manager of neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Create symbolic link to config files
cd "$SCRIPT_DIR"
echo $(pwd)
ln -s ./nvim ~/.config/nvim
ln -s ./.gitconfig ~/.gitconfig

# Install packages
nvim --headless -c "autocmd User PackerComplete quitall" -c "PackerSync"

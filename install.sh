#!/bin/bash
set -e

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
    locales

locale-gen ja_JP.UTF-8
echo "export LANG=ja_JP.UTF-8" >> ~/.bashrc

# Install neovim in latest version
cd /usr/local/bin
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.appimage
chmod u+x nvim-linux-x86_64.appimage
./nvim-linux-x86_64.appimage --appimage-extract
mv squashfs-root nvim-appimage
ln -sf /usr/local/bin/nvim-appimage/AppRun /usr/bin/nvim

# Get package manager of neovim
git clone --depth 1 https://github.com/wbthomason/packer.nvim \
    ~/.local/share/nvim/site/pack/packer/start/packer.nvim

# Create symbolic link to config files
mkdir -p ~/.config/

# Backup and make neovim config link
[ -L ~/.config/nvim ] && rm ~/.config/nvim
[ -d ~/.config/nvim ] && mv ~/.config/nvim ~/.config/nvim.backup.$(date +%Y%m%d%H%M%S)
ln -s "$SCRIPT_DIR/nvim" ~/.config/nvim

# Backup and make git config link
[ -L ~/.gitconfig ] && rm ~/.gitconfig
[ -f ~/.gitconfig ] && mv ~/.gitconfig ~/.gitconfig.backup.$(date +%Y%m%d%H%M%S)
ln -s "$SCRIPT_DIR/.gitconfig" ~/.gitconfig

# Install packages
# nvim --headless -c "autocmd User PackerSyncComplete quitall" -c "PackerSync"

# clean up apt cache to reduce size
apt clean
rm -rf /var/lib/apt/lists/*

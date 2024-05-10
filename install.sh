#!/bin/bash
echo "Start configure neovim"

rm -rf ${HOME}/.config/nvim
mkdir -p ${HOME}/.config
ln -s $(pwd)/ ${HOME}/.config/nvim
# neovim插件的安装目录
packer_path=${HOME}/.local/share/nvim/site/pack/packer/start/
rm -rf ${packer_path}
mkdir -p ${packer_path}
git clone --depth 1 https://github.com/wbthomason/packer.nvim.git ${packer_path}/packer.nvim


sudo apt install tmux vim fzf fd-find git git-lfs \
    ripgrep curl wget tree unzip gcc make python3-venv python3-pip \
    shfmt net-tools wordnet


echo "End configure neovim"
echo "NOTICE: Please open nvim, and run ':PackerSync' !!!"

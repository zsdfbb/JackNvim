echo "Start configure neovim"
# 使用myscrypt的neovim配置脚本
rm -rf ${HOME}/.config/nvim
mkdir -p ${HOME}/.config
ln -s $(pwd)/ ${HOME}/.config/nvim
# neovim插件的安装目录
packer_path=${HOME}/.local/share/nvim/site/pack/packer/start/
rm -rf ${packer_path}
mkdir -p ${packer_path}
git clone --depth 1 https://github.com/wbthomason/packer.nvim.git ${packer_path}/packer.nvim
echo "End configure neovim"
echo "NOTICE: Please open nvim, and run ':PackerSync' !!!"

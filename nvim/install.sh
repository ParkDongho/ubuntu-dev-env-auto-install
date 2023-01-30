#install nvim
wget https://github.com/neovim/neovim/releases/download/stable/nvim-linux64.deb
sudo apt install ./nvim-linux64.deb
rm nvim-linux64.deb

#######################
#AstroNvim requirements
#tree-sistter-cli
sudo apt install npm
npm install tree-sitter-cli

#ripgrep
sudo snap install curl  # version 7.87.0
curl -LO https://github.com/BurntSushi/ripgrep/releases/download/13.0.0/ripgrep_13.0.0_amd64.deb
sudo dpkg -i ripgrep_13.0.0_amd64.deb

#lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin
lazygit --version

#go DiskUsage()
sudo add-apt-repository ppa:daniel-milde/gdu
sudo apt-get install gdu

#bottom
curl -LO https://github.com/ClementTsang/bottom/releases/download/0.8.0/bottom_0.8.0_amd64.deb
sudo dpkg -i bottom_0.8.0_amd64.deb

#python311
sudo apt install python3.10

#################
#install AstroNvim
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
cp ./nvim-metals.lua ~/.config/nvim/lua/configs/nvim-metals.lua
cp ./plugins.lua     ~/.config/nvim/lua/core/plugins.lua

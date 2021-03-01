curl -fsSL https://starship.rs/install.sh | bash
echo 'eval "$(starship init bash)"' >> ~/.bashrc
sudo apt install neovim
sh -c 'curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p ~/.config/nvim/
cp init.vim ~/.config/nvim/
cp starship.toml ~/.config/starship.toml
nvim -c ':PlugInstall' -c ":qa!"

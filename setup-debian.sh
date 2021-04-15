SCRIPT=`realpath $0`
SCRIPTPATH=`dirname $SCRIPT`
curl -fsSL https://starship.rs/install.sh | bash
echo 'eval "$(starship init bash)"' >> ~/.bashrc
sudo apt install neovim
sudo apt install bat
sh -c 'curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
mkdir -p ~/.config/nvim/
ln -s -f "$SCRIPTPATH/init.vim" ~/.config/nvim/
ln -s -f "$SCRIPTPATH/starship.toml" ~/.config/
nvim -c ':PlugInstall' -c ":qa!"

curl -fsSL https://starship.rs/install.sh | bash
echo "eval \"$(starship init bash)\"" >> ~/.bashrc
sudo apt install neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
cp init.vim "~/.config/nvim/"

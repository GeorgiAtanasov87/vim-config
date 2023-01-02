# Get .vimrc config from this repo
curl https://raw.githubusercontent.com/GeorgiAtanasov87/vim-config/main/.vimrc >> ~/.vimrc

# Load OneDark color scheme from its own repo
mkdir -p ~/.vim/colors/
curl https://raw.githubusercontent.com/joshdick/onedark.vim/main/colors/onedark.vim >> ~/.vim/colors/onedark.vim 
mkdir -p ~/.vim/autoload/
curl https://raw.githubusercontent.com/joshdick/onedark.vim/main/autoload/onedark.vim >> ~/.vim/autoload/onedark.vim

# To make this file executable run the following command:
# chmod +x load_vim_config.sh

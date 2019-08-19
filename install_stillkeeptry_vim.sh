mkdir -p ~/.vim ~/.vim/bundle
cp -r ./autoload ~/.vim/
cp -r ./colors ~/.vim/
cp .vimrc ~/.vimrc

cd ~/.vim/bundle

git clone https://github.com/wincent/command-t.git
git clone https://github.com/scrooloose/nerdtree.git
git clone https://github.com/kien/rainbow_parentheses.vim.git
git clone https://github.com/rstacruz/sparkup.git
git clone https://github.com/tpope/vim-fugitive.git
git clone https://github.com/Lokaltog/vim-powerline.git
git clone https://github.com/VundleVim/Vundle.vim.git
git clone https://github.com/Valloric/YouCompleteMe.git

vim +PluginInstall +qall

cd YouCompleteMe/
git submodule update --init --recursive
./install.py --clang-completer

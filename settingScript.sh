cd ~;
rm -rf ~/VimSettings/.vim/bundle;
mkdir ~/VimSettings/.vim/bundle;
git clone git://github.com/Shougo/neobundle.vim ~/vimsettings/.vim/bundle/neobundle.vim;
cd ~;
ln -s ~/VimSettings/.vim/.vimrc ~/.vimrc;
ln -s ~/VimSettings/.vim/.gvimrc ~/.gvimrc;

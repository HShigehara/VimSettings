cd ~;
rm -rf ~/vimsettings/.vim/bundle;
mkdir ~/vimsettings/.vim/bundle;
git clone git://github.com/Shougo/neobundle.vim ~/vimsettings/.vim/bundle/neobundle.vim;
cd ~;
ln -s ~/vimsettings/.vim/.vimrc ~/.vimrc;
ln -s ~/vimsettings/.vim/.gvimrc ~/.gvimrc;

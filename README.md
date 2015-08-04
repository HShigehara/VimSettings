#How To Use This Repository
##Clone to Home Directory
1. **$cd ~**
2. **$git clone https://HShigehara@bitbucket.org/HShigehara/vimsettings.git**

##Remove vimsettings/.vim/bundle. Recreate bundle Directory and Clone NeoBundle.
1. **$cd ~**
2. **$rm -rf ~/vimsettings/.vim/bundle**
3. **$mkdir ~/vimsettings/.vim/bundle**
4. **$git clone git://github.com/Shougo/neobundle.vim ~/vimsettings/.vim/bundle/neobundle.vim**

##Please Create a Symbolic Link of ".vimrc" and ".gvimrc" to Home Directory.
1. **$cd ~**
2. **$ln -s ~/vimsettings/.vim/.vimrc ~/.vimrc**
3. **$ln -s ~/vimsettings/.vim/.gvimrc ~/.gvimrc**

##Please Start the vim or Gvim.
1. **$vim**
1. **$gvim**

##When You Enter the ":NeoBundleInstall", Installing Plugin. 

###Quote : http://qiita.com/muran001/items/3080c4816b7c2e65e40b
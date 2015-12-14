#How To Use This Repository
##1. Clone to Home Directory.
```
cd ~
git clone https://github.com/HShigehara/VimSettings.git
```
---
#[Auto Setting]
`sh ~/vimsettings/settingScript.sh`
---
#[Manual Setting]
##1. Remove VimSettings/.vim/bundle. Recreate bundle Directory and Clone NeoBundle.
```
cd ~
rm -rf ~/VimSettings/.vim/bundle
mkdir ~/VimSettings/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/VimSettings/.vim/bundle/neobundle.vim
```
##2. Please Create a Symbolic Link of ".vimrc" and ".gvimrc" to Home Directory.
```
cd ~
ln -s ~/VimSettings/.vim/.vimrc ~/.vimrc
ln -s ~/VimSettings/.vim/.gvimrc ~/.gvimrc
```
---
#[Please Start the vim or Gvim.]
```
vim
gvim
```
#[When You Enter the "`:NeoBundleInstall`", Installing Plugin.]

###Quote : http://qiita.com/muran001/items/3080c4816b7c2e65e40b
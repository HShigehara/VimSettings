#How To Use This Repository
##1. Clone to Home Directory.
```
cd ~
git clone https://HShigehara@bitbucket.org/HShigehara/vimsettings.git
```
---
#[Auto Setting]
`sh ~/vimsettings/settingScript.sh`
---
#[Manual Setting]
##1. Remove vimsettings/.vim/bundle. Recreate bundle Directory and Clone NeoBundle.
```
cd ~
rm -rf ~/vimsettings/.vim/bundle
mkdir ~/vimsettings/.vim/bundle
git clone git://github.com/Shougo/neobundle.vim ~/vimsettings/.vim/bundle/neobundle.vim
```
##2. Please Create a Symbolic Link of ".vimrc" and ".gvimrc" to Home Directory.
```
cd ~
ln -s ~/vimsettings/.vim/.vimrc ~/.vimrc
ln -s ~/vimsettings/.vim/.gvimrc ~/.gvimrc
```
---
#[Please Start the vim or Gvim.]
```
vim
gvim
```
#[When You Enter the "`:NeoBundleInstall`", Installing Plugin.]

###Quote : http://qiita.com/muran001/items/3080c4816b7c2e65e40b

git clone https://github.com/Thomaskr17/mybackup.git

sudo apt install vim ctags cscope git

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd ~/work/bak/mybackup/vim

cp -r .vim/bundle ~/.vim/

cp -r .vim/plugin ~/.vim/

cp .vimrc ~

vi ~/.vimrc

>> :PluginList

>> :PluginInstall

-----------------------------

vi ~/.minttyrc

BoldAsFont=1

Font=나눔고딕코딩

FontHeight=12

Blue=127,127,255

BoldBlue=191,191,255

Red=255,127,127

BoldRed=255,191,191

-----------------------------

2018-04-27
  - backup vimrc at the beablebone black



#한글입력

 sudo apt-get install locales
 
 sudo dpkg-reconfigure localse
 
  -> [*] en_US.UTF-8 UTF-8
  
  -> [*] ko_KR.UTF-8 UTF-8
    

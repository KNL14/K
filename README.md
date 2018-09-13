
git clone https://github.com/Thomaskr17/mybackup.git

sudo apt install vim

git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cd ~/work/bak/mybackup/vim

cp -r .vim/bundle ~/.vim/bundle

cp .vimrc ~

vi ~/.vimrc

>> :PluginList

>> :PluginInstall

-----------------------------

2018-04-27
  - backup vimrc at the beablebone black



#한글입력

 sudo apt-get install locales
 
 sudo dpkg-reconfigure localse
 
  -> [*] en_US.UTF-8 UTF-8
  
  -> [*] ko_KR.UTF-8 UTF-8
    

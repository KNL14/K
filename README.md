
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

:cs show                      <- cscope.out 확인 (:cscope)
:cs add [cscope.out 경로]      <- cscope.out 추가
:cs find <검색 유형> <keyword>  <- keyword 검색
:cs help                      <- cscope help

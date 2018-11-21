sudo apt-get install curl -y #install curl
sudo apt-get install silversearcher-ag #install ag
sudo apt-get install build-essential cmake -y #install build-essential cmake
sudo apt-get install python-dev -y #install python-dev
sudo apt-get install vim-gnome -y #install vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim #copy plug
mkdir ~/.vim/vimrc #create vimrc directory
git clone https://github.com/skcc321/vimrc.git ~/.vim/vimrc/ #get vimrc
ln -s ~/.vim/vimrc/vimrc ~/.vimrc #creat soft link
vim +PlugInstall +qall #install plugins
wget https://gist.githubusercontent.com/sos4nt/3187620/raw/8e13c1fec5b72d415ed2917590348451de5f8e58/xterm-256color-italic.terminfo #get xterm-256color-italic
tic xterm-256color-italic.terminfo #tic xterm

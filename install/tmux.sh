sudo apt-get install -y python-software-properties software-properties-common #install dependencies
sudo add-apt-repository -y ppa:pi-rho/dev #add repository
sudo apt-get update #update list
sudo apt-get install -y tmux #install tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm #install tpm
mkdir ~/.tmux/config #create conf dir
git clone https://github.com/skcc321/tmux.git ~/.tmux/config/ #download config
ln -s ~/.tmux/config/tmux.conf ~/.tmux.conf #make softlink to conf
##tmux is almost ready
##run tmux
##Ctrl-h + I

sudo apt-add-repository ppa:fish-shell/release-2 -y #add repository
sudo apt-get update #update sources
sudo apt-get install fish -y #install fish
git clone git@github.com:skcc321/fish.git ~/.config/fish
echo "rvm default" >> ~/.config/fish/config.fish #add rvm support
git clone git://github.com/passcod/nvm-fish-wrapper.git ~/.config/fish/nvm-wrapper
sudo chsh -s /usr/bin/fish #make fish default shell

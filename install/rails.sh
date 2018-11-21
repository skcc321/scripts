sudo apt-get update #update sources
sudo apt-get install git-core curl zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev python-software-properties libffi-dev -y #install dependencies
sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev -y #install rvm dependencies
curl -sSL https://rvm.io/mpapis.asc | gpg2 --import - #rvm signature
curl -L https://get.rvm.io | bash -s stable #install rvm
rvm install 2.3.0 #install ruby 2.3.0
rvm use 2.3.0 --default #set ruby 2.3.0 as default
gem install bundler #install bundler
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - #install rails dependencies
sudo apt-get install -y nodejs #install nodejs
gem install rails -v 4.2.6 #install rails 4.2.6

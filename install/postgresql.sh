sudo sh -c "echo 'deb http://apt.postgresql.org/pub/repos/apt/ xenial-pgdg main' > /etc/apt/sources.list.d/pgdg.list" #add repository
wget --quiet -O - http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc | sudo apt-key add - #add key
sudo apt-get update #update sources
sudo apt-get install -y postgresql-common #install postgress common
sudo apt-get install -y postgresql-9.5 libpq-dev #install postgresql 9.5
sudo -u postgres createuser rigel -s #create psql user
sudo sed -i "s/local   all             all                                     peer   all             all                                     trust/g" /etc/postgresql/9.5/main/pg_hba.conf #make trust connections

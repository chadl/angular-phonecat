#! /bin/bash
if [ ! -f /home/vagrant/already-installed-flag ]
then
  echo "ADD EXTRA ALIAS VIA .bashrc"
  cat /vagrant/bashrc.append.txt >> /home/vagrant/.bashrc
  echo "GENERAL APT-GET UPDATE"
  apt-get -qq update
  echo "INSTALL NODEJS"
  apt-get -qq -y install nodejs 
  echo "INSTALL NPM"
  apt-get -qq -y install npm
  echo "INSTALL GIT"
  apt-get -qq -y install git
  echo "INSTALL VIM"
  apt-get -qq -y install vim
  echo "INSTALL TREE"
  apt-get -qq -y install tree
  echo "INSTALL UNZIP"
  apt-get -qq -y install unzip

  touch /home/vagrant/already-installed-flag
  echo "Done!"
else
  echo "already installed flag set : /home/vagrant/already-installed-flag"
fi


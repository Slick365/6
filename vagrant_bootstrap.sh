#!/bin/bash

alias python='/usr/bin/python3.10'
export PYTHONPATH=/usr/lib/python3.10

echo 'Installing git, python3-pip, nginx, supervisor'
sudo apt-get install git python3-pip -y > /dev/null

echo 'Installing postgres...'
sudo apt-get install install postgresql -y > /dev/null

echo 'Installing virtualenv and virtualenvwrapper with pip3'
alias python='/usr/bin/python3.10'
pip3 install --quiet virtualenv
pip3 install --quiet django
mkdir ~vagrant/.virtualenvs
chown vagrant:vagrant ~vagrant/.virtualenvs
printf "\n\n# Virtualenv settings\n" >> ~vagrant/.bashrc
printf "export PYTHONPATH=/usr/lib/python3.10" >> ~vagrant/.bashrc
printf "export WORKON_HOME=~vagrant/.virtualenvs\n" >> ~vagrant/.bashrc
printf "export PROJECT_HOME=/vagrant\n" >> ~vagrant/.bashrc
printf "export VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3.10\n" >> ~vagrant/.bashrc
printf "source /usr/local/bin/virtualenvwrapper.sh\n" >> ~vagrant/.bashrc

echo ""
echo "Vagrant install complete."

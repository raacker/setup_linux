#!/bin/bash

# force to run in sudo
if [[ $EUID -ne 0 ]]; then
   echo "Please run with sudo"
   exit 1
fi

apt-get update && apt-get -y upgrade
sudo -u haven mkdir $HOME/setups
cd $HOME/setups && sudo -u haven git clone https://github.com/raacker/setup_vim && cd setup_vim && chmod 700 run.sh && sudo ./run.sh
cd $HOME/setups && sudo -u haven git clone https://github.com/raacker/setup_blog && cd setup_blog && chmod 700 run.sh && sudo ./run.sh
cd $HOME/setups && sudo -u haven git clone https://github.com/raacker/setup_python && cd setup_python && chmod 700 run.sh && sudo ./run.sh
cd $HOME/setups && sudo -u haven git clone https://github.com/raacker/setup_web && cd setup_web && chmod 700 run.sh && sudo ./run.sh
cd $HOME/setups && sudo -u haven git clone https://github.com/raacker/setup_intellij

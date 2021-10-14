#!/bin/bash
installFileZilla(){
    echo "Installing File Zila..."
    sudo add-apt-repository ppa:sicklylife/filezilla
    sudo apt update
    sudo apt-get install filezilla
}

installDBeaver(){
    echo "Installing DBeaver..."
    echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
    wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
    sudo apt-get update
    sudo apt-get install dbeaver-ce
}

installPostman(){
    echo "Installing Postman..."
    sudo snap install postman
}

installFileZilla
installDBeaver
installPostman
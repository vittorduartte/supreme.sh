#!/bin/bash
installGit(){
    echo "Installing git..."
    sudo apt update
    sudo apt install git
}

configureGit(){
    echo "Configure git..."
    git config --global user.name "vittorduartte"
    git config --global user.email "mateusriograndense@gmail.com"
}

installGitKraken(){
   echo "Installing GitKraken..."
   sudo snap install gitkraken --classic
}

installGit
configureGit
installGitKraken

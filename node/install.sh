installNvm(){
    echo "Installing NVM..."
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh
    curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
}

configureNvmToZsh(){
    echo "Configure NVM To ZSH..."
    echo 'export NVM_DIR="$([ -z "${XDG_CONFIG_HOME-}" ] && printf %s "${HOME}/.nvm" || printf %s "${XDG_CONFIG_HOME}/nvm")"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm' >> ~/.zshrc
    echo "!!! Warning !!!"
    echo "Execute source: ~./bashrc and source ~/.zshrc"
    sleep 3
}

installNode(){
    echo "Installing Node v14.18.1..."
    nmv install v14.18.1
}

installGitmoji(){
    echo "Installing Gitmoji..."
    npm i -g gitmoji-cli
}

installNvm
configureNvmToZsh
installNode
installGitmoji
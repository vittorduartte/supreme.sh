#!/bin/bash
installGnomeTerminal(){
	#Install Gnome Terminal:
	echo "Installing gnome terminal..."
	sudo apt install gnome-terminal
}

installZsh(){
	#Install zsh and git:
	echo "Installing zsh and git..."
	gnome-terminal -- sudo apt install zsh git
}

installOhMyZSH(){
	#Install Oh My ZSH:
	echo "Installing  OhMyZsh..."
	gnome-terminal -- sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
}

installPowerLevel9k(){
	#Install PowerLevel9K:
	echo "Installing PowerLevel9K..."
	git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
	git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
	git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
	gnome-terminal -- curl https://gist.githubusercontent.com/vittorduartte/9764a5230625d7e546f90de5b2f0ff9b/raw/879c169038b0159a6a059c86c66fc79836e715a5/.zhsrc --output ~/.zshrc
}

installDracula(){
	#Install Dracula
	echo "Installing Dracula Terminal Theme..."
	sudo apt install dconf-cli
	gnome-terminal -- git clone https://github.com/dracula/gnome-terminal && cd gnome-terminal
	./install.sh
	cd .. && rm -rf gnome-terminal
}

installGnomeTerminal
installZsh
installOhMyZSH
installPowerLevel9k
installDracula


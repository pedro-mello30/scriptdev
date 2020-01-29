#!/bin/bash


DISTRO=``
RELEASE=``


#### Apps ####
#### IDE'S ####
JETBRAINS_TOOLS=true
INTELLIJ=true
PHPSTORM=true
VS_CODE=true
ANDROID_STUDIO=true
SUBLIME=true
CACHER=true

#### Tools ####
GNU_CLOCKS=true
VLC=true
SKYPE=true
SPOTIFY=true
SLACK=true
BITWARDEN=true
AUDACITY=true
DELUGE=true

#### Dev Tools ####
POSTMAN=true
NMAP=true
FILEZILLA=true
UMBRELLO=true
HTOP=true

DOCKER=true
VIRTUALBOX=true
KUBERNETES=true
AWSCLI=true
APACHE=true

#### languages ####
GCC=true
JAVA=true
PYTHON=true
PHP=true
RUBY=true
NODEJS=true
GRUNTJS=true

#### Browsers ####
VIVALDI=true
TOR=true
CHROME=true

DRIVERS=true
ALIASES=true


INSTALL_BASE() {
     echo -e "\nInstalling base\n"
	sudo apt-get update
	sudo apt-get -y install lsb-release

	DISTRO=`lsb_release -si`
	RELEASE=`lsb_release -sr`
	
	echo $DISTRO
	echo $RELEASE
}

INSTALL_UBUNTU_18() {
     echo -e "\nInstalling libraries\n"	
     sudo apt-get update
     sudo apt-get upgrade

     sudo apt-get install -y -f
	sudo apt-get -y install pkg-config
     sudo apt-get -y install build-essential
     sudo apt-get -y install software-properties-common
     sudo apt-get -y install linux-headers-$(uname -r)
     sudo apt-get -y install linux-image-extra-$(uname -r)
     sudo apt-get -y install linux-image-extra-virtual
     sudo apt-get -y install libssl-dev
     sudo apt-get -y install libffi-dev
     sudo apt-get -y install zlib1g-dev
     sudo apt-get -y install libbz2-dev
     sudo apt-get -y install libreadline-dev
     sudo apt-get -y install libsqlite3-dev
     sudo apt-get -y install llvm
     sudo apt-get -y install libncurses5-dev
     sudo apt-get -y install libncursesw5-dev
     sudo apt-get -y install unixodbc
     sudo apt-get -y install unixodbc-dev
     sudo apt-get -y install libaio1
     sudo apt-get -y install freetds-bin
     sudo apt-get -y install freetds-dev
     sudo apt-get -y install tdsodbc
     sudo apt-get -y install alien
     sudo apt-get -y install apt-transport-https
     sudo apt-get -y install ca-certificates
     sudo apt-get -y install git
     sudo apt-get -y install automake
     sudo apt-get -y install autoconf
     sudo apt-get -y install pk
     sudo apt-get -y install snapd-xdg-open
     sudo apt-get -y install make
     sudo apt-get -y install libgtk-3-dev
     sudo apt-get -y install libtiff5-dev
     sudo apt-get -y install libjpeg8-dev
     sudo apt-get -y install zlib1g-dev
     sudo apt-get -y install libfreetype6-dev
     sudo apt-get -y install liblcms2-dev
     sudo apt-get -y install libwebp-dev
     sudo apt-get -y install tcl8.6-dev
     sudo apt-get -y install tk8.6-dev
     sudo apt-get -y install vim
     sudo apt-get -y install curl
     sudo apt-get -y install nano
     sudo apt-get -y install members
     sudo apt-get -y install exfat-utils
     sudo apt-get -y install exfat-fuse
     sudo apt-get -y install unrar
     sudo apt-get -y install mcelog
     sudo apt-get -y install net-tools
     sudo apt-get -y install openssh
     sudo apt-get -y install gparted

     sudo add-apt-repository ppa:graphics-drivers/ppa
}

INSTALL_JETBRAINS_TOOLS() {
     echo -e "\nInstalling JETBRAINS_TOOLS\n"
     wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.16.6207.tar.gz
     sudo chmod +x jetbrains-toolbox-1.16.6207.tar.gz
     sudo tar -xvzf jetbrains-toolbox-1.16.6207.tar.gz -C /opt
     sudo rm -rf jetbrains-toolbox-1.16.6207.tar.gz
     #/opt/jetbrains-toolbox-1.16.6207/jetbrains-toolbox
}

INSTALL_INTELLIJ() {
     echo -e "\nInstalling INTELLIJ\n"
     sudo snap remove intellij-idea-ultimate
     sudo snap install intellij-idea-ultimate --classic
}

INSTALL_PHPSTORM() {
     echo -e "\nInstalling PHPSTORM\n"
     sudo snap remove phpstorm
     sudo snap install phpstorm --classic
}

INSTALL_VS_CODE() {
     echo -e "\nInstalling VS_CODE\n"
     sudo snap remove vscode
     sudo snap install code --classic
}

INSTALL_ANDROID_STUDIO() {
     echo -e "\nInstalling ANDROID_STUDIO\n"
     sudo snap remove android-studio
     sudo snap install android-studio --classic
}

INSTALL_SUBLIME() {
     echo -e "\nInstalling SUBLIME\n"
     sudo snap remove sublime-text
     sudo snap install sublime-text --classic
}

INSTALL_CACHER() {
     echo -e "\nInstalling CACHER\n"
     sudo snap remove cacher
     sudo snap install cacher
}



INSTALL_GNU_CLOCKS() {
     echo -e "\nInstalling GNU_CLOCKS\n"
     sudo snap remove gnome-clocks
     sudo snap install gnome-clocks
}

INSTALL_VLC() {
     echo -e "\nInstalling VLC\n\n"
     sudo snap remove vlc
     sudo snap install vlc
}

INSTALL_SKYPE() {
     echo -e "\nInstalling SKYPE\n"
     sudo snap remove skype
     sudo snap install skype --classic
}

INSTALL_SPOTIFY() {
     echo -e "\nInstalling SPOTIFY\n"
     sudo snap remove spotify
     sudo snap install spotify
}

INSTALL_SLACK() {
     echo -e "\nInstalling SLACK\n"
     sudo snap remove slack
     sudo snap install slack --classic
}

INSTALL_BITWARDEN() {
     echo -e "\nInstalling BITWARDEN\n"
     sudo snap remove bitwarden
     sudo snap install bitwarden
}

INSTALL_AUDACITY() {
     echo -e "\nInstalling AUDACITY\n"
     sudo snap remove audacity
     sudo snap install audacity
}

INSTALL_DELUGE() {
     echo -e "\nInstalling DELUGE\n"
     sudo add-apt-repository ppa:deluge-team/ppa
     sudo apt -y install deluge
}

INSTALL_POSTMAN() {
     echo -e "\nInstalling POSTMAN\n"
     sudo snap remove postman
     sudo snap install postman
}

INSTALL_NMAP() {
     echo -e "\nInstalling NMAP\n"
     sudo snap remove nmap
     sudo snap install nmap
     snap connect nmap:network-control
}

INSTALL_FILEZILLA() {
     echo -e "\nInstalling FILEZILLA\n"
     sudo apt-get -y install filezilla
}

INSTALL_UMBRELLO() {
     echo -e "\nInstalling UMBRELLO\n"
     sudo snap remove umbrello
     sudo snap install umbrello
}

INSTALL_HTOP() {
     echo -e "\nInstalling HTOP\n"
     sudo snap remove htop
     sudo snap install htop
     snap connect htop:mount-observe
     snap connect htop:process-control
     snap connect htop:system-observe
     snap connect htop:network-control
}

INSTALL_DOCKER() {
     echo -e "\nInstalling DOCKER\n"
     curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
     sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
     sudo apt update
     sudo apt -y install docker-ce

     sudo groupadd docker
     sudo usermod -aG docker $USER
     sudo systemctl restart docker

     # Docker-compose
     sudo curl -L "https://github.com/docker/compose/releases/download/1.25.3/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
     sudo chmod +x /usr/local/bin/docker-compose
}

INSTALL_VIRTUALBOX() {
     echo -e "\nInstalling VIRTUALBOX\n"
     wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
     wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
     sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian bionic contrib"
     sudo apt -y install virtualbox-6.0
}

INSTALL_KUBERNETES() {
     echo -e "\nInstalling KUBERNETES\n"

     curl -s https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key add
     sudo apt-add-repository "deb http://apt.kubernetes.io/ kubernetes-xenial main"
     sudo apt-get install kubeadm kubelet kubectl
     sudo apt-mark hold kubeadm kubelet kubectl

}

INSTALL_AWSCLI() {
     echo -e "\nInstalling AWSCLI\n"
     sudo apt-get -y install awscli
}

INSTALL_APACHE() {
     echo -e "\nInstalling APACHE\n"
     sudo apt install -y apache2
}

INSTALL_GCC() {
     echo -e "\nInstalling G++\n"
     sudo apt install g++
     sudo apt install build-essential
}

INSTALL_JAVA() {
     echo -e "\nInstalling JAVA\n"
     sudo apt install -y default-jdk
     sudo apt install -y openjdk-8-jdk
}


INSTALL_PYTHON() {
     echo -e "\nInstalling PYTHON\n"
     sudo apt-get -y install python3 python3-pip
     sudo apt-get -y install python3-numpy \
                              python3-matplotlib \
                              python3-scipy \
                              python3-pandas \
                              python3-simpy

     sudo apt-get -y install ipython3 ipython3-notebook
     sudo apt-get -y install python3-opengl
     sudo apt-get -y install python3-h5py
}

INSTALL_PHP() {
     echo -e "\nInstalling PHP\n"
     sudo apt -y install php libapache2-mod-php
     sudo systemctl restart apache2
}

INSTALL_RUBY() {
     echo -e "\nInstalling RUBY\n"
     sudo apt install -y ruby-full
}

INSTALL_NODEJS() {
     echo -e "\nInstalling NODEJS\n"
     curl -sL https://deb.nodesource.com/setup_13.x | sudo -E bash -
     sudo apt-get install -y nodejs
}

INSTALL_GRUNTJS() {
     echo -e "\nInstalling GRUNTJS\n"
     sudo apt-get install -y npm
     sudo npm install -g grunt
}

INSTALL_VIVALDI() {
     echo -e "\nInstalling VIVALDI\n"
     wget -qO- http://repo.vivaldi.com/stable/linux_signing_key.pub | sudo apt-key add -
     sudo add-apt-repository "deb [arch=i386,amd64] http://repo.vivaldi.com/stable/deb/ stable main"
     sudo apt-get -y install vivaldi-stable
}

INSTALL_TOR() {
     echo -e "\nInstalling TOR\n"
     wget -q -O - https://deb.torproject.org/torproject.org/A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89.asc | sudo apt-key add -
     echo "deb https://deb.torproject.org/torproject.org $(lsb_release -cs) main" | sudo tee -a /etc/apt/sources.list
     sudo apt install tor deb.torproject.org-keyring torbrowser-launcher
}


INSTALL_CHROME() {
     echo -e "\nInstalling CHROME\n"
     wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
     sudo dpkg -i google-chrome-stable_current_amd64.deb
     sudo rm -rf google-chrome-stable_current_amd64.deb
}

INSTALL_DRIVERS() {
     echo -e "\nInstalling DRIVERS\n"
     for d in $(ubuntu-drivers list); do
          sudo apt -y install $d
     done
}

CONFIGURE_ALIASES() {
     echo -e "\nConfiguring ALIASES\n"
     
     cat << 'END' >> ~/.bashrc

alias ..='cd ..' 
alias proj='cd /mnt/D/Projetos' 
alias projW='cd /var/www/html/ProjetosWeb' 
alias projF='cd /mnt/D/Projetos/ProjetosFaculdade' 
alias projJ='cd /mnt/D/Projetos/ProjetosJava' 
alias projApp='cd /mnt/D/Projetos/ProjetosApps' 
alias disc='cd /mnt/D' 
alias down='cd /mnt/D/Downloads' 
alias downL='cd /home/pedro/Downloads' 

END
     exec bash
}


SET_BACKGROUND() {
     BKGPATH="'file://$(pwd)/bkgPM.png'"
     su - $USER -c "gsettings set org.gnome.desktop.background picture-uri $(echo $BKGPATH)"
}


INSTALL() {
	INSTALL_BASE;

	if [[ "$DISTRO" == "Ubuntu" ]] && [[ "$RELEASE" == "18.04" ]]; then
        	INSTALL_UBUNTU_18;
	fi

     if [[ $JETBRAINS_TOOLS == true ]]; then
          INSTALL_JETBRAINS_TOOLS;
     fi

     if [[ $INTELLIJ == true ]]; then
          INSTALL_INTELLIJ;
     fi

     if [[ $PHPSTORM == true ]]; then
          INSTALL_PHPSTORM;
     fi

     if [[ $VS_CODE == true ]]; then
          INSTALL_VS_CODE;
     fi

     if [[ $ANDROID_STUDIO == true ]]; then
          INSTALL_ANDROID_STUDIO;
     fi

     if [[ $SUBLIME == true ]]; then
          INSTALL_SUBLIME;
     fi

     if [[ $CACHER == true ]]; then
          INSTALL_CACHER;
     fi

     if [[ $GNU_CLOCKS == true ]]; then
          INSTALL_GNU_CLOCKS;
     fi

     if [[ $VLC == true ]]; then
          INSTALL_VLC;
     fi

     if [[ $SKYPE == true ]]; then
          INSTALL_SKYPE;
     fi

     if [[ $SPOTIFY == true ]]; then
          INSTALL_SPOTIFY;
     fi

     if [[ $SLACK == true ]]; then
          INSTALL_SLACK;
     fi

     if [[ $BITWARDEN == true ]]; then
          INSTALL_BITWARDEN;
     fi

     if [[ $AUDACITY == true ]]; then
          INSTALL_AUDACITY;
     fi

     if [[ $DELUGE == true ]]; then
          INSTALL_DELUGE;
     fi

     if [[ $POSTMAN == true ]]; then
          INSTALL_POSTMAN;
     fi

     if [[ $NMAP == true ]]; then
          INSTALL_NMAP;
     fi

     if [[ $FILEZILLA == true ]]; then
          INSTALL_FILEZILLA;
     fi


     if [[ $UMBRELLO == true ]]; then
          INSTALL_UMBRELLO;
     fi

     if [[ $HTOP == true ]]; then
          INSTALL_HTOP;
     fi

	if [[ $DOCKER == true ]]; then
		INSTALL_DOCKER;
	fi

     if [[ $VIRTUALBOX == true ]]; then
          INSTALL_VIRTUALBOX;
     fi

     if [[ $KUBERNETES == true ]]; then
          INSTALL_KUBERNETES;
     fi

     if [[ $AWSCLI == true ]]; then
          INSTALL_AWSCLI;
     fi

     if [[ $APACHE == true ]]; then
          INSTALL_APACHE;
     fi

     if [[ $GCC == true ]]; then
          INSTALL_GCC;
     fi

     if [[ $JAVA == true ]]; then
          INSTALL_JAVA;
     fi

     if [[ $PYTHON == true ]]; then
          INSTALL_PYTHON;
     fi

     if [[ $PHP == true ]]; then
          INSTALL_PHP;
     fi
     
     if [[ $RUBY == true ]]; then
          INSTALL_RUBY;
     fi
     
     if [[ $NODEJS == true ]]; then
          INSTALL_NODEJS;
     fi

     if [[ $GRUNTJS == true ]]; then
          INSTALL_GRUNTJS;
     fi

     if [[ $VIVALDI == true ]]; then
          INSTALL_VIVALDI;
     fi

     if [[ $TOR == true ]]; then
          INSTALL_TOR;
     fi

     if [[ $CHROME == true ]]; then
          INSTALL_CHROME;
     fi

     if [[ $DRIVERS == true ]]; then
          INSTALL_DRIVERS;
     fi

     if [[ $ALIASES == true ]]; then
          CONFIGURE_ALIASES;
     fi

     SET_BACKGROUND;
}

INSTALL;





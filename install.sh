#!/bin/bash
echo
echo "Iniciando instalação dos SNAP"
echo

# Atualiza a lista de pacotes
sudo apt update

# Executa atualização do sistema
sudo apt upgrade -y

# Instala o Adobe Acrobat Reader via Snap
sudo snap install acrordrdc

# Instala o Beekeeper Studio via Snap
sudo snap install beekeeper-studio

# Instala o bitwarden Studio via Snap
sudo snap install bitwarden

# Instala o Notion Studio via Snap
sudo snap install notion-snap

echo
echo "Iniciando instalação dos DEB"
echo

# Instala o btop via apt install
sudo apt install btop -y

# Instala o visual studio via apt install
sudo apt install wget
wget https://update.code.visualstudio.com/latest/linux-deb-x64/stable -O vscode.deb
sudo dpkg -i vscode.deb
sudo apt install -f

# Instala o codium via apt install
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update
sudo apt install codium -y

# Instala o curl via apt install
sudo apt install curl -y

# Instala o exa via apt install
sudo apt install exa -y

# Instala o git via apt install
sudo apt install git
git config --global user.name "fhilippedev"
git config --global user.email "fhilippedev@gmail.com"

# Instala o neofetch via apt install
sudo apt install neofetch -y

# Instala o nodejs via apt install
sudo apt install nodejs -y

# Instala o npm via apt install
sudo apt install npm

# Instala o anydesk via apt install
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install -y anydesk

# Instala o teamviewer via apt install
wget https://download.teamviewer.com/download/linux/teamviewer_amd64.deb
sudo dpkg -i teamviewer_amd64.deb
sudo apt install -f

# Instala o edge via apt install
# Adicionar a chave do repositório do Microsoft Edge
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.asc.gpg
sudo mv microsoft.asc.gpg /etc/apt/trusted.gpg.d/
sudo chown root:root /etc/apt/trusted.gpg.d/microsoft.asc.gpg

# Adicionar o repositório do Microsoft Edge ao sistema
echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" | sudo tee /etc/apt/sources.list.d/microsoft-edge.list

# Atualizar a lista de pacotes
sudo apt update -y

# Instalar o Microsoft Edge
sudo apt install microsoft-edge-beta -y 

# Instala o flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Finalizar o script
echo
echo "Instalação concluída com sucesso!"
echo
reboot
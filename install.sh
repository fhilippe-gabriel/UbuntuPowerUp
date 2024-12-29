#!/bin/bash
echo
echo "Iniciando instalação dos SNAP"
echo

# Atualiza a lista de pacotes
sudo apt update -y

# Executa atualização do sistema
sudo apt upgrade -y

# Instala o Adobe Acrobat Reader via Snap
sudo snap install acrordrdc -y

# Instala o Beekeeper Studio via Snap
sudo snap install beekeeper-studio -y
 
# Instala o bitwarden Studio via Snap
sudo snap install bitwarden -y

echo
echo "Iniciando instalação dos DEB"
echo

# Instala o btop via apt install
sudo apt install btop -y

# Instala o visual studio via apt install
#!/bin/bash

# Download latest VSCode package
wget -O vscode.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"

# Install VSCode package
sudo dpkg -i vscode.deb

# Install dependencies if needed
sudo apt-get install -f

# Remove the downloaded package
rm vscode.deb

# Instala o codium via apt install
wget -qO - https://gitlab.com/paulcarroty/vscodium-deb-rpm-repo/raw/master/pub.gpg \
    | gpg --dearmor \
    | sudo dd of=/usr/share/keyrings/vscodium-archive-keyring.gpg
echo 'deb [ signed-by=/usr/share/keyrings/vscodium-archive-keyring.gpg ] https://download.vscodium.com/debs vscodium main' \
    | sudo tee /etc/apt/sources.list.d/vscodium.list
sudo apt update -y
sudo apt install codium -y

# Instala o curl via apt install
sudo apt install curl -y

# Instala o batcat via apt install
sudo apt install bat -y

# Instala o eza via apt install
sudo apt install eza -y

# Instala o git via apt install
sudo apt install git -y
git config --global user.name "fhilippedev"
git config --global user.email "fhilippedev@gmail.com"

# Instala o gh-cli via apt install
type -p curl >/dev/null || sudo apt install curl -y
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo dd of=/usr/share/keyrings/githubcli-archive-keyring.gpg \
&& sudo chmod go+r /usr/share/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

export GH_TOKEN=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D
# Instala o neofetch via apt install
sudo apt install neofetch -y

# Instala o nodejs via apt install
sudo apt install nodejs -y

# Instala o npm via apt install
sudo apt install npm -y
tall -y anydesk

# Atualizar lista de pacotes
echo "Atualizando lista de pacotes..."
sudo apt update -y

# Atualizar a lista de pacotes
sudo apt update -y

# Instalar o spotify
curl -sS https://download.spotify.com/debian/pubkey_7A3A762FAFD4A51F.gpg | sudo gpg --dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.gpg
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get update -y && sudo apt-get install spotify-client -y

# Instala o flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# Finalizar o script
echo
echo "Instalação concluída com sucesso!"
echo
echo
echo "Configurando ALIASES!"
echo

cp assets/.bash_aliases ~/
source .bash_aliases.sh
echo
echo "Configuração de ALIASES finalisadas!"
echo

echo
echo "Configurando Oh-MY-ZSH!"
echo

# Instalar o zsh
sudo apt install zsh -y

echo
echo "  Finalizando!"
echo

 sudo apt-get clean
sudo reboot

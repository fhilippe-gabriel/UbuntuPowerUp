#!/bin/bash
echo
echo "Iniciando instalação de flatpaks"
echo

# Atualiza a lista de pacotes
sudo apt update

# Executa atualização do sistema
sudo apt upgrade -y

# Instala o telegram via flatpak
flatpak install flathub org.telegram.desktop -y

# Instala o audacity  via flatpak
flatpak install flathub org.audacityteam.Audacity -y

# Instala o autenticador  via flatpak
flatpak install flathub com.belmoussaoui.Authenticator
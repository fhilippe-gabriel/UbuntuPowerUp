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

# Instala o Exrensio Manager via flatpak
flatpak install flathub com.mattjakeman.ExtensionManager -y

# Instala o Soundux via flatpak
flatpak install flathub io.github.Soundux -y

# Instala o Monitor do sistema via flatpak
flatpak install flathub io.missioncenter.MissionCenter -y

# Instala o Master PDF via flatpak
flatpak install flathub net.codeindustry.MasterPDFEditor -y

# Instala o  Gimp via flatpak
flatpak install flathub org.gimp.GIMP -y

# Instala o PulseAudio Volume Control via flatpak
flatpak install flathub org.pulseaudio.pavucontrol -y

# Instala o Telegram via flatpak
flatpak install flathub org.telegram.desktop

# Instala o  via flatpak
flatpak install flathub org.upscayl.Upscayl
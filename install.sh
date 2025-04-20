#!/bin/bash

# === CONFIGURAÇÃO DE CORES ===
CYAN='\033[1;36m'
MAGENTA='\033[1;35m'
GREEN='\033[1;32m'
BLUE='\033[1;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # sem cor

# === FUNÇÃO DE SPINNER ===
spinner() {
    local pid=$!
    local delay=0.1
    local spinstr='|/-\'
    echo -n " "
    while [ "$(ps a | awk '{print $1}' | grep $pid)" ]; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        local spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    printf "    \b\b\b\b"
}

# === FUNÇÃO DE ETAPA COM BARRA ===
step() {
    local text=$1
    echo -e "\n${MAGENTA}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
    echo -e "${CYAN}➤ $text"
    echo -e "${MAGENTA}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
}

clear
echo -e "${BLUE}"
echo "╔════════════════════════════════════════════════╗"
echo "║        🌈 Script de Instalação Ubuntu         ║"
echo "║        by fhilippedev | Estilo Omni 🎧        ║"
echo "╚════════════════════════════════════════════════╝"
echo -e "${NC}"

step "Atualizando sistema..."
(sudo apt update -y && sudo apt upgrade -y) & spinner

step "Instalando pacotes essenciais..."
sudo apt install -y btop curl bat eza git neofetch nodejs npm zsh flatpak gnome-software-plugin-flatpak gnome-tweaks gnome-session & spinner

step "Configurando Git..."
git config --global user.name "fhilippedev"
git config --global user.email "fhilippedev@gmail.com"

step "Instalando GitHub CLI..."
(type -p wget >/dev/null || (sudo apt update -y && sudo apt install -y wget)) \
    && sudo mkdir -p -m 755 /etc/apt/keyrings \
    && out=$(mktemp) && wget -nv -O $out https://cli.github.com/packages/githubcli-archive-keyring.gpg \
    && sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg < $out > /dev/null \
    && sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
    && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" \
    | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
    && sudo apt update -y \
    && sudo apt install -y gh & spinner

step "Instalando Spotify (Snap)..."
sudo snap install spotify & spinner

step "Configurando Flatpak com Flathub..."
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo & spinner

step "Configurando Aliases..."
cp assets/.bash_aliases ~/.bash_aliases
source ~/.bash_aliases

step "Limpando pacotes temporários..."
sudo apt-get clean -y & spinner

echo -e "\n${GREEN}✅ Tudo instalado com sucesso!"
echo -e "${YELLOW}⏳ Reiniciando em 5 segundos..."
sleep 5
sudo reboot

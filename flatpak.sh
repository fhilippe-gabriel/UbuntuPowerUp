#!/bin/bash

# Cores Vibrantes
CYAN='\033[1;36m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
PURPLE='\033[1;35m'
RESET='\033[0m'

# Spinner (O charme do carregamento)
spinner() {
    local pid=$!
    local delay=0.1
    local spinstr='|/-\'
    tput civis # Esconde o cursor
    while kill -0 $pid 2>/dev/null; do
        local temp=${spinstr#?}
        printf " [${PURPLE}%c${RESET}]  " "$spinstr"
        spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    tput cnorm # Mostra o cursor
    printf "    \b\b\b\b"
}

print_step() {
    echo -ne "${CYAN}🚀 $1...${RESET}"
}

print_success() {
    echo -e "${GREEN} ✅ Pronto!${RESET}"
}

print_fail() {
    echo -e "${RED} ❌ Deu ruim em: $1${RESET}"
}

echo -e "${YELLOW}====================================================${RESET}"
echo -e "${YELLOW}   📦 FLATPAK PARTY - Instalando a Suíte de Elite   ${RESET}"
echo -e "${YELLOW}====================================================${RESET}"

# Preparação
print_step "Sincronizando com a Matrix (Apt Update)"
(sudo apt update -y &>/dev/null & spinner) && print_success

print_step "Subindo o level do sistema (Apt Upgrade)"
(sudo apt upgrade -y &>/dev/null & spinner) && print_success

# Seção de Flatpaks
echo -e "\n${PURPLE}📥 Baixando os brinquedos novos...${RESET}\n"

# Telegram
print_step "Instalando Telegram (Fofoca em alta velocidade)"
(flatpak install -y flathub org.telegram.desktop &>/dev/null & spinner) && print_success

# Extension Manager
print_step "Instalando Extension Manager (Tunando o GNOME)"
(flatpak install -y flathub com.mattjakeman.ExtensionManager &>/dev/null & spinner) && print_success

# Mission Center
print_step "Instalando Mission Center (Olhando o motor do PC)"
(flatpak install -y flathub io.missioncenter.MissionCenter &>/dev/null & spinner) && print_success

# GIMP
print_step "Instalando GIMP (Design sem pagar assinatura)"
(flatpak install -y flathub org.gimp.GIMP &>/dev/null & spinner) && print_success

# LocalSend
print_step "Instalando LocalSend (AirDrop pra todo mundo)"
(flatpak install -y flathub org.localsend.localsend_app &>/dev/null & spinner) && print_success

# Ignition
print_step "Instalando Ignition (Dando a partida)"
(flatpak install -y flathub io.github.flattool.Ignition &>/dev/null & spinner) && print_success

# Passwords
print_step "Instalando Passwords (O cofre secreto)"
(flatpak install -y flathub io.gitlab.elescoute.password &>/dev/null & spinner) && print_success

# Video Downloader
print_step "Instalando Video Downloader (Caçador de vídeos)"
(flatpak install -y flathub com.github.unrud.VideoDownloader &>/dev/null & spinner) && print_success

# Warehouse
print_step "Instalando Warehouse (O armazém de Flatpaks)"
(flatpak install -y flathub io.github.flattool.Warehouse &>/dev/null & spinner) && print_success

echo -e "\n${GREEN}====================================================${RESET}"
echo -e "${GREEN}🎉 TUDO PRONTO! Seus Flatpaks estão voando! 🎉${RESET}"
echo -e "${GREEN}====================================================${RESET}"

# Opcional: Rodar o LocalSend no final (tire o comentário se quiser que abra sozinho)
# flatpak run org.localsend.localsend_app &
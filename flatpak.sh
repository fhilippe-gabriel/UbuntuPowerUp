#!/bin/bash

# Cores
CYAN='\033[1;36m'
GREEN='\033[1;32m'
YELLOW='\033[1;33m'
RED='\033[1;31m'
RESET='\033[0m'

# Spinner
spinner() {
    local pid=$!
    local delay=0.1
    local spinstr='|/-\'
    tput civis
    while kill -0 $pid 2>/dev/null; do
        local temp=${spinstr#?}
        printf " [%c]  " "$spinstr"
        spinstr=$temp${spinstr%"$temp"}
        sleep $delay
        printf "\b\b\b\b\b\b"
    done
    tput cnorm
    printf "    \b\b\b\b"
}

print_step() {
    echo -e "${CYAN}🔧 $1...${RESET}"
}

print_success() {
    echo -e "${GREEN}✅ $1${RESET}"
}

print_fail() {
    echo -e "${RED}❌ $1${RESET}"
}

echo
echo -e "${YELLOW}✨ Iniciando instalação de Flatpaks...${RESET}"
echo

# Atualização do sistema
print_step "Atualizando lista de pacotes"
(sudo apt update -y & spinner) && print_success "Lista de pacotes atualizada"

print_step "Atualizando o sistema"
(sudo apt upgrade -y & spinner) && print_success "Sistema atualizado"

# Flatpaks

print_step "📦 Instalando Telegram"
(flatpak install -y flathub org.telegram.desktop & spinner) && print_success "Telegram instalado"

print_step "📦 Instalando Extension Manager"
(flatpak install -y flathub com.mattjakeman.ExtensionManager & spinner) && print_success "Extension Manager instalado"

print_step "📦 Instalando Monitor do Sistema (Mission Center)"
(flatpak install -y flathub io.missioncenter.MissionCenter & spinner) && print_success "Mission Center instalado"

print_step "🎨 Instalando GIMP"
(flatpak install -y flathub org.gimp.GIMP & spinner) && print_success "GIMP instalado"

print_step "📤 Instalando LocalSend"
(flatpak install -y flathub org.localsend.localsend_app & spinner) && print_success "LocalSend instalado"

print_step "🚀 Executando LocalSend"
(flatpak run org.localsend.localsend_app & spinner) && print_success "LocalSend iniciado"

echo
echo -e "${GREEN}🎉 Todos os Flatpaks foram instalados com sucesso!${RESET}"

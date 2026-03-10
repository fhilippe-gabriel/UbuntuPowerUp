#!/bin/bash

# --- Cores e Estilo ---
VERDE='\033[0;32m'
AZUL='\033[0;34m'
AMARELO='\033[1;33m'
CYAN='\033[1;36m'
RESET='\033[0m'

# --- Funções de Status ---
step() {
    echo -e "\n${AZUL}✨ [PASSO]: $1${RESET}"
}

success() {
    echo -e "${VERDE}✅ $1${RESET}"
}

echo -e "${AMARELO}🚀 Iniciando a Transformação Máquina Turbo! 🚀${RESET}"
echo "----------------------------------------------------"

# --- Atualização Inicial ---
step "Preparando o terreno e atualizando o sistema... 🛠️"
sudo apt update && sudo apt upgrade -y
success "Sistema atualizado!"

# --- Instalação de Pacotes Base ---
step "Instalando a artilharia pesada (Apt)... 📦"
sudo apt install -y \
    btop curl bat eza git fastfetch nodejs npm zsh \
    flatpak gnome-software-plugin-flatpak gnome-tweaks gnome-session \
    ca-certificates gnupg lsb-release
success "Ferramentas essenciais instaladas!"

# --- Git ---
step "Configurando sua identidade secreta no Git... 👤"
git config --global user.name "fhilippedev"
git config --global user.email "fhilippedev@gmail.com"
success "Git configurado para fhilippedev!"

# --- GitHub CLI ---
step "Invocando o Polvo (GitHub CLI)... 🐙"
sudo mkdir -p -m 755 /etc/apt/keyrings
wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null
sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null
sudo apt update && sudo apt install gh -y
success "GitHub CLI pronto para o deploy!"

# --- Docker & Docker Compose ---
step "Instalando o motor das baleias (Docker)... 🐋"
sudo install -m 0755 -d /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg --yes
sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
success "Docker instalado com sucesso!"

step "Configurando permissões e Portainer... 🚢"
sudo usermod -aG docker $USER
# Criando volume e subindo Portainer
sudo docker volume create portainer_data
sudo docker run -d -p 9000:9000 --name portainer --restart=unless-stopped -v /var/run/docker.sock:/var/run/docker.sock -v portainer_data:/data portainer/portainer-ce:latest
success "Portainer rodando em http://localhost:9000"

step "Otimizando Docker para uso manual... ⚡"
# Desativa inicialização automática para usar seus aliases docker-on/off
sudo systemctl disable docker
sudo systemctl disable containerd
success "Docker configurado para modo manual (On-Demand)!"

# --- Spotify ---
step "Soltando o som (Spotify Snap)... 🎵"
sudo snap install spotify
success "Playlist liberada!"

# --- Flatpak ---
step "Preparando o terreno para o Flathub... 🍱"
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
success "Flathub adicionado!"

# --- Aliases ---
step "Criando atalhos mágicos (Aliases)... ⌨️"
if [ -f assets/.bash_aliases ]; then
    cp assets/.bash_aliases ~/.bash_aliases
    success "Aliases copiados com sucesso!"
else
    echo -e "${AMARELO}⚠️  Aviso: Arquivo 'assets/.bash_aliases' não encontrado.${RESET}"
fi

# --- Insomnia ---
step "Instalando o Insomnia (Para aquelas APIs de madrugada)... ☕"
# Adicionando repositório oficial para garantir a instalação via apt
echo "deb [trusted=yes arch=$(dpkg --print-architecture)] https://download.konghq.com/insomnia-ubuntu/ default all" | sudo tee /etc/apt/sources.list.d/insomnia.list
sudo apt update && sudo apt install -y insomnia
success "Insomnia instalado!"

# --- Cleanup ---
step "Limpando a bagunça da festa... 🧹"
sudo apt-get clean -y
sudo apt autoremove -y
success "Tudo limpo e brilhando!"

echo -e "\n${VERDE}====================================================${RESET}"
echo -e "${VERDE}🎉 TUDO PRONTO! Sua máquina agora é um foguete! 🎉${RESET}"
echo -e "${VERDE}====================================================${RESET}"
echo -e "Dica: Para o Docker funcionar sem sudo agora, reinicie sua sessão."
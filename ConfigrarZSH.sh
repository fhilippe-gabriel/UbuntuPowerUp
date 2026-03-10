#!/bin/bash

# Cores e Estilo
VERDE='\033[0;32m'
AZUL='\033[0;34m'
ROXO='\033[0;35m'
AMARELO='\033[1;33m'
RESET='\033[0m'

# Funções de status
step() {
    echo -e "\n${ROXO}🔮 [MAGIA]: $1${RESET}"
}

success() {
    echo -e "${VERDE}✅ $1${RESET}"
}

# Definindo o caminho do custom do ZSH (caso não esteja setado)
ZSH_CUSTOM=${ZSH_CUSTOM:-~/.oh-my-zsh/custom}

echo -e "${AMARELO}⚡ Iniciando o Tuning do Terminal! Preparar para o Hyperspace... ⚡${RESET}"
echo "-----------------------------------------------------------------------"

# --- Oh My Zsh ---
step "Instalando o Oh My Zsh (O cérebro da operação)... 🧠"
# O '--unattended' evita que o instalador pare o script e entre no ZSH antes da hora
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
success "Oh My Zsh instalado com sucesso!"

# --- Spaceship Prompt ---
step "Lançando o foguete Spaceship Prompt... 🚀"
if [ ! -d "$ZSH_CUSTOM/themes/spaceship-prompt" ]; then
    git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1
    ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"
    success "Spaceship Prompt pronto para decolagem!"
else
    echo "🛸 Spaceship já está na base, pulando instalação."
fi

# --- Zinit ---
step "Instalando Zinit (O turbo dos plugins)... ⚡"
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"
success "Zinit carregado e pronto para a ação!"

# --- Configurações Personalizadas ---
step "Aplicando seu DNA digital (ZSHRC & Aliases)... 🧬"

# Criando um backup rápido por segurança
[ -f ~/.zshrc ] && mv ~/.zshrc ~/.zshrc.bak
[ -f ~/.bash_aliases ] && mv ~/.bash_aliases ~/.bash_aliases.bak

if [ -f assets/.zshrc ] && [ -f assets/.bash_aliases ]; then
    cp assets/.zshrc ~/
    cp assets/.bash_aliases ~/
    success "Configurações aplicadas! Backup das antigas criado em *.bak."
else
    echo -e "${AMARELO}⚠️  Ops! Arquivos em 'assets/' não encontrados. Verifique o caminho.${RESET}"
fi

echo -e "\n${VERDE}====================================================${RESET}"
echo -e "${VERDE}🎨 O TERMINAL ESTÁ MARAVILHOSO! 🎉${RESET}"
echo -e "${VERDE}====================================================${RESET}"
echo -e "Agora é só digitar: ${AMARELO}zsh${RESET} e sentir o poder!"
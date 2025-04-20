# === FUNÇÕES DE ESTÉTICA E PROGRESSO ===
GREEN="\033[1;32m"
CYAN="\033[1;36m"
NC="\033[0m"

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
  echo -e " ${GREEN}[✔]${NC}"
}

step() {
  echo -e "\n${CYAN}==> $1${NC}"
}

# === CONFIGURANDO ZSH ===

step "Instalando Oh-My-ZSH..."
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" & spinner

step "Instalando tema Spaceship..."
git clone https://github.com/spaceship-prompt/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt" --depth=1 & spinner
ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"

step "Instalando gerenciador de plugins Zinit..."
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)" & spinner

step "Atualizando o Zinit..."
zinit self-update & spinner

step "Aplicando configurações personalizadas..."
rm -f ~/.zshrc
cp assets/.zshrc ~/ & spinner

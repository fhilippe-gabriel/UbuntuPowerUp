# === Atualizações e Upgrade ===
alias up-full='sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt dist-upgrade -y'
alias up-full-s='sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt dist-upgrade -y && systemctl suspend'
alias up-full-r='sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt dist-upgrade -y && sudo reboot'
alias up-full-p='sudo apt update && sudo apt upgrade -y && sudo apt full-upgrade -y && sudo apt dist-upgrade -y && sudo poweroff'

# === Comandos de Navegação ===
alias ..='cd ..'
alias ~='cd ~'  # Vai para o diretório home

# === Ferramentas e Comandos Úteis ===
alias cat='batcat'       # Usa o batcat (bat) em vez do cat, com syntax highlighting
alias ls='eza'           # Usa eza no lugar de ls, com melhor formatação
alias nf='neofetch'      # Exibe as informações do sistema de forma visual
alias ex='exit'          # Alias para sair do terminal
alias cl='clear'          # Alias para limpar o terminal

# === Comandos de Desenvolvimento ===
alias start-lara='php artisan serve'  # Inicia o servidor Laravel
alias nrj='npm run start'             # Inicia o servidor do npm
alias artisan='php artisan'           # Atalho para o comando artisan no Laravel

# === Gerenciamento de Pacotes ===
alias apti='sudo apt install -y'      # Instala pacotes com apt sem precisar confirmar
alias aptr='sudo apt remove -y'       # Remove pacotes com apt sem precisar confirmar
alias snapr='sudo snap remove'        # Remove pacotes Snap
alias aptc='sudo apt autoclean -y'    # Limpa o cache de pacotes do apt
alias aptrc='sudo apt-get autoremove -y'  # Remove pacotes desnecessários

# === Alias para reinicialização e desligamento ===
alias rb='sudo reboot'       # Alias para reiniciar
alias pw='sudo poweroff'     # Alias para desligar
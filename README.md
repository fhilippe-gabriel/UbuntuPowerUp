# 🚀 Ubuntu Workstation Booster | Automatic Setup

🌐 **Languages: [🇧🇷 Português](#pt-br) | [🇺🇸 English](#en)**

---

# 🇧🇷 Português <a name="pt-br"></a>

## 🎯 Visão Geral

O **Ubuntu Workstation Booster** é um conjunto de scripts que automatiza a configuração de uma workstation Ubuntu para desenvolvimento.

Ele instala ferramentas essenciais, configura um ambiente **ZSH moderno**, adiciona **aliases úteis**, instala **aplicativos via Flatpak**, e deixa o terminal com um visual profissional.

Tudo com **feedback visual, cores, emojis e animações no terminal**.

---

## ✨ Recursos

- 🚀 Setup automatizado de ambiente Ubuntu
- 🧠 Instalação e configuração do **ZSH + Oh My Zsh**
- 🎨 Tema moderno **Spaceship Prompt**
- ⚡ Gerenciamento de plugins com **Zinit**
- 📦 Instalação de ferramentas via **APT**
- 🎧 Apps adicionais via **Snap**
- 🍱 Aplicativos modernos via **Flatpak / Flathub**
- 🔧 Aliases úteis para produtividade
- 💻 Ambiente pronto para desenvolvimento

---

## 📁 Estrutura do Projeto

```
.
├── assets/
│   ├── .bash_aliases
│   └── .zshrc
├── install.sh
├── flatpak.sh
├── ConfigurarZSH.sh
└── README.md
```

---

# 📦 Scripts

## 🛠️ install.sh

Script principal responsável por instalar ferramentas base do sistema.

### Pacotes instalados via APT

- btop
- curl
- bat
- eza
- git
- fastfetch
- nodejs
- npm
- zsh
- flatpak
- gnome-tweaks
- gnome-session
- gnome-software-plugin-flatpak

### Ferramentas adicionais

Também instala:

- **GitHub CLI (`gh`)**
- **Spotify via Snap**

Além disso:

- Configura o **Git**
- Copia **aliases personalizados**
- Configura suporte ao **Flatpak**

---

## 📂 flatpak.sh

Script responsável por instalar aplicativos modernos via **Flathub** com animações de carregamento.

### Aplicativos instalados

| Aplicativo        | Função                       |
| ----------------- | ---------------------------- |
| Telegram          | Mensagens                    |
| Extension Manager | Gerenciar extensões do GNOME |
| Mission Center    | Monitor de sistema moderno   |
| GIMP              | Editor de imagens            |
| LocalSend         | Compartilhamento de arquivos |
| Ignition          | Gerenciador de Flatpaks      |
| Passwords         | Gerenciador de senhas        |
| Video Downloader  | Baixar vídeos                |
| Warehouse         | Gerenciador de Flatpaks      |

---

## ✨ ConfigurarZSH.sh

Script responsável por configurar o ambiente ZSH completo.

### O que ele instala

- **Oh My Zsh**
- **Spaceship Prompt**
- **Zinit (gerenciador de plugins)**

### Plugins instalados

- fast-syntax-highlighting
- zsh-autosuggestions
- zsh-history-substring-search
- zsh-completions
- yarn-completion
- alias-finder

---

# 🧩 Arquivos de Configuração

## `.bash_aliases`

Contém atalhos úteis para o terminal.

Exemplos:

```bash
alias up-full='sudo apt update && sudo apt upgrade -y'
alias rb='sudo reboot'
alias pw='sudo poweroff'
alias nf='fastfetch'
alias ls='eza'
alias cat='batcat'
```

Também inclui atalhos para:

- Docker
- Laravel
- NPM
- gerenciamento de pacotes

---

## `.zshrc`

Configuração personalizada do ZSH contendo:

- Tema **Spaceship**
- Plugins extras
- Integração com **Zinit**
- Integração com `.bash_aliases`
- Prompt customizado

---

# ▶️ Como usar

Clone o repositório:

```bash
git clone https://github.com/fhilippe-gabriel/script-install-ubuntu
```

Entre na pasta:

```bash
cd script-install-ubuntu
```

Dê permissão aos scripts:

```bash
chmod +x *.sh
```

Execute os scripts:

```bash
./install.sh
./flatpak.sh
./ConfigurarZSH.sh
```

Após finalizar, reinicie a sessão ou execute:

```bash
zsh
```

---

# 👨‍💻 Desenvolvedor

**Fhilippe**

GitHub
https://github.com/fhilippe-gabriel

Email
[fhilippedev@gmail.com](mailto:fhilippedev@gmail.com)

---

# 🤝 Contribuição

Contribuições são bem-vindas!

Você pode:

- abrir **Issues**
- enviar **Pull Requests**
- sugerir novas ferramentas
- melhorar a documentação

---

# 📜 Licença

MIT License

---

---

# 🇺🇸 English <a name="en"></a>

## 🎯 Overview

**Ubuntu Workstation Booster** is a set of scripts that automates the setup of an Ubuntu development workstation.

It installs essential tools, configures a **modern ZSH environment**, adds **useful aliases**, installs **Flatpak applications**, and enhances the terminal experience with colors, emojis and animations.

---

## ✨ Features

- 🚀 Automated Ubuntu setup
- 🧠 **ZSH + Oh My Zsh** configuration
- 🎨 Modern **Spaceship Prompt**
- ⚡ Plugin management with **Zinit**
- 📦 Core tools via **APT**
- 🎧 Additional apps via **Snap**
- 🍱 Modern applications via **Flatpak / Flathub**
- 🔧 Productivity aliases
- 💻 Developer-ready environment

---

## 📁 Project Structure

```
.
├── assets/
│   ├── .bash_aliases
│   └── .zshrc
├── install.sh
├── flatpak.sh
├── ConfigurarZSH.sh
└── README.md
```

---

# 📦 Scripts

## 🛠️ install.sh

Main script responsible for installing system tools.

### APT packages

- btop
- curl
- bat
- eza
- git
- fastfetch
- nodejs
- npm
- zsh
- flatpak
- gnome-tweaks
- gnome-session
- gnome-software-plugin-flatpak

### Extra tools

Also installs:

- **GitHub CLI (`gh`)**
- **Spotify via Snap**

It also:

- Configures **Git**
- Copies **aliases**
- Enables **Flatpak support**

---

## 📂 flatpak.sh

Installs modern applications via **Flathub** with a spinner animation.

### Installed apps

| App               | Purpose                 |
| ----------------- | ----------------------- |
| Telegram          | Messaging               |
| Extension Manager | Manage GNOME extensions |
| Mission Center    | Modern system monitor   |
| GIMP              | Image editing           |
| LocalSend         | File sharing            |
| Ignition          | Flatpak manager         |
| Passwords         | Password manager        |
| Video Downloader  | Video downloader        |
| Warehouse         | Flatpak manager         |

---

## ✨ ConfigurarZSH.sh

Configures the full ZSH environment.

### Installs

- **Oh My Zsh**
- **Spaceship Prompt**
- **Zinit plugin manager**

### Plugins

- fast-syntax-highlighting
- zsh-autosuggestions
- zsh-history-substring-search
- zsh-completions
- yarn-completion
- alias-finder

---

# 🧩 Configuration Files

## `.bash_aliases`

Provides useful terminal shortcuts such as:

```bash
alias up-full='sudo apt update && sudo apt upgrade -y'
alias rb='sudo reboot'
alias pw='sudo poweroff'
alias nf='fastfetch'
alias ls='eza'
alias cat='batcat'
```

Also includes shortcuts for:

- Docker
- Laravel
- NPM
- Package management

---

## `.zshrc`

Custom ZSH configuration including:

- **Spaceship theme**
- Plugin loading
- **Zinit integration**
- Alias support

---

# ▶️ How to Use

Clone the repository:

```bash
git clone https://github.com/fhilippe-gabriel/script-install-ubuntu
```

Enter the folder:

```bash
cd script-install-ubuntu
```

Make scripts executable:

```bash
chmod +x *.sh
```

Run the scripts:

```bash
./install.sh
./flatpak.sh
./ConfigurarZSH.sh
```

After installation restart your session or run:

```bash
zsh
```

---

# 👨‍💻 Developer

**Fhilippe**

GitHub
https://github.com/fhilippe-gabriel

Email
[fhilippedev@gmail.com](mailto:fhilippedev@gmail.com)

---

# 🤝 Contribute

Feel free to:

- open **Issues**
- send **Pull Requests**
- suggest improvements

---

# 📜 License

MIT

# 🚀 Ubuntu Workstation Booster | Instalador Automático

🌐 **Languages: [🇧🇷 Português](#pt-br) | [🇺🇸 English](#en)**

---

## 🇧🇷 Português

### 🎯 Visão Geral

Este projeto automatiza a configuração de uma workstation Ubuntu com ZSH personalizado, ferramentas de desenvolvimento e aplicativos essenciais via APT, Snap e Flatpak — tudo com um visual moderno e funcional, incluindo emojis, cores e feedback com animações.

---

### 📁 Estrutura

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

### 📦 Scripts

#### 🛠️ `install.sh`

- Instala pacotes via APT e Snap
- Configura o shell ZSH
- Aplica aliases personalizados

##### ✔️ Pacotes APT

- `btop`, `curl`, `batcat`, `eza`, `git`, `gh`, `neofetch`, `nodejs`, `npm`, `flatpak`, `gnome-software-plugin-flatpak`

##### 📦 Snaps

- 🎧 Spotify

##### 🧠 Extras

- Copia `.bash_aliases` e configura o ZSH

---

#### 📂 `flatpak.sh`

Instala via Flatpak com animação de carregamento e mensagens estilizadas:

| Aplicativo           | Flatpak ID                         | Ícone |
| -------------------- | ---------------------------------- | ----- |
| 📱 Telegram          | `org.telegram.desktop`             | 📨    |
| 🧩 Extension Manager | `com.mattjakeman.ExtensionManager` | 🧩    |
| 📊 System Monitor    | `io.missioncenter.MissionCenter`   | 📈    |
| 📸 LocalSend         | `org.localsend.localsend_app`      | 📤    |

No final, o `LocalSend` é executado automaticamente.

---

#### ✨ `ConfigurarZSH.sh`

- Instala o **Oh My Zsh**
- Aplica o tema **Spaceship**
- Adiciona plugins úteis:
  - `zsh-autosuggestions`
  - `zsh-completions`
  - `zsh-history-substring-search`
  - `fast-syntax-highlighting`
  - `yarn-completion`
- Adiciona suporte ao plugin `alias-finder` ✅

---

### 🧩 Configurações

#### `.bash_aliases`

Inclui aliases para facilitar comandos, como:

```bash
alias up-full='sudo apt update && sudo apt upgrade && sudo apt full-upgrade && sudo apt dist-upgrade'
alias rb='sudo reboot'
alias pw='sudo poweroff'
alias ~='cd ~'
```

#### `.zshrc`

Personalizado com:

- Tema Spaceship 🚀
- Plugins úteis
- Integração com Zinit
- Comportamento otimizado

---

### ▶️ Como usar

```bash
git clone https://github.com/fhilippe-gabriel/script-install-ubuntu
cd script-install-ubuntu

chmod +x *.sh
./install.sh
./flatpak.sh
./ConfigurarZSH.sh
```

---

## 👨‍💻 Desenvolvedor

**Fhilippe**  
💼 [GitHub](https://github.com/fhilippe-gabriel)  
📧 [fhilippedev@gmail.com](mailto:fhilippedev@gmail.com)

---

## 🤝 Contribua!

Sinta-se livre para enviar PRs, issues ou sugestões. Bora turbinar esse setup juntos! 🔧

---

## 📜 Licença

MIT

---

---

## 🇺🇸 English

### 🎯 Overview

This project automates the setup of an Ubuntu workstation with a personalized ZSH shell, developer tools, and essential apps using APT, Snap, and Flatpak — with cool visuals, emojis, colors, and spinners.

---

### 📁 Structure

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

### 📦 Scripts

#### 🛠️ `install.sh`

- Installs via APT and Snap
- Configures ZSH
- Copies aliases

##### ✔️ APT Packages

- `btop`, `curl`, `batcat`, `eza`, `git`, `gh`, `neofetch`, `nodejs`, `npm`, `flatpak`, `gnome-software-plugin-flatpak`

##### 📦 Snaps

- 🎧 Spotify

---

#### 📂 `flatpak.sh`

Installs Flatpaks with spinner and styled messages:

| App                  | Flatpak ID                         | Icon |
| -------------------- | ---------------------------------- | ---- |
| 📱 Telegram          | `org.telegram.desktop`             | 📨   |
| 🧩 Extension Manager | `com.mattjakeman.ExtensionManager` | 🧩   |
| 📊 System Monitor    | `io.missioncenter.MissionCenter`   | 📈   |
| 📸 LocalSend         | `org.localsend.localsend_app`      | 📤   |

`LocalSend` runs at the end.

---

#### ✨ `ConfigurarZSH.sh`

- Installs **Oh My Zsh**
- Applies **Spaceship** theme
- Adds plugins:
  - `zsh-autosuggestions`
  - `zsh-completions`
  - `zsh-history-substring-search`
  - `fast-syntax-highlighting`
  - `yarn-completion`
- Adds `alias-finder` plugin ✅

---

### 🧩 Config Files

#### `.bash_aliases`

Contains helpful terminal shortcuts like:

```bash
alias up-full='sudo apt update && sudo apt upgrade && sudo apt full-upgrade && sudo apt dist-upgrade'
alias rb='sudo reboot'
alias pw='sudo poweroff'
alias ~='cd ~'
```

#### `.zshrc`

ZSH config with:

- Spaceship theme
- Extra plugins
- Zinit loader

---

### ▶️ How to use

```bash
git clone https://github.com/fhilippe-gabriel/script-install-ubuntu
cd script-install-ubuntu

chmod +x *.sh
./install.sh
./flatpak.sh
./ConfigurarZSH.sh
```

---

## 👨‍💻 Desenvolvedor

**Fhilippe**  
💼 [GitHub](https://github.com/fhilippe-gabriel)  
📧 [fhilippedev@gmail.com](mailto:fhilippedev@gmail.com)

---

## 🤝 Contribute!

Feel free to open issues, send PRs or suggest features. Let’s build an epic Linux setup together! 💻

---

## 📜 License

MIT

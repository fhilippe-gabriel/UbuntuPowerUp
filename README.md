# 🚀 UbuntuPowerUp - Boost your Ubuntu in minutes! 🌟

🇧🇷 Um conjunto de scripts para turbinar seu Ubuntu com os melhores apps, temas e produtividade.  
🇺🇸 A script suite to supercharge your Ubuntu with the best apps, themes, and terminal productivity.

---

## 📁 Estrutura | Structure

```
UbuntuPowerUp/
├── assets/
│   ├── .bash_aliases        → Atalhos personalizados | Custom terminal shortcuts
│   └── .zshrc               → Configuração ZSH      | ZSH theme and plugin config
├── ConfigurarZSH.sh         → ZSH + OhMyZsh setup with themes/plugins
├── flatpak.sh               → Instala apps via Flatpak | Installs apps via Flatpak
├── install.sh               → Instala Snap/apt e configura terminal
└── README.md                → Este arquivo | This file
```

---

## 🧠 O que os scripts fazem? | What do the scripts do?

### 🔧 `install.sh` – Snap + APT Setup

Instala pacotes essenciais via **APT** e **Snap**, configura **aliases**, o shell ZSH com tema Spaceship 🚀.

📦 **APT Packages**

- `btop` 📊
- `batcat` 🦇
- `eza` 📁
- `curl` 🌐
- `git` 🔧
- `gh` (GitHub CLI) 🐙
- `neofetch` 📷
- `nodejs` / `npm` 📦
- `flatpak`, `gnome-software-plugin-flatpak`
- `vscodium` 🧬
- `code` (VSCode) 💻
- `spotify` 🎧

📦 **Snap Packages**

- Adobe Acrobat Reader 📄
- Beekeeper Studio 🐝
- Bitwarden 🔐

### 🚀 `flatpak.sh` – Flatpak Installer com Spinner & Emojis

Instala apps via [Flathub](https://flathub.org), com animações e feedback visual bonitão 😎

📦 **Aplicativos Instalados:**
| App | Ícone | Flatpak ID |
|--------------------------|-------|--------------------------------------------|
| Telegram | 💬 | `org.telegram.desktop` |
| Extension Manager | 🧩 | `com.mattjakeman.ExtensionManager` |
| Mission Center (Monitor) | 📊 | `io.missioncenter.MissionCenter` |
| GIMP (Editor de Imagens) | 🎨 | `org.gimp.GIMP` |
| LocalSend (Compartilhamento local) | 📤 | `org.localsend.localsend_app` |

✨ O script inclui:

- Spinner animado para cada instalação
- Cores e emojis de status ✅ ❌
- Execução automática do **LocalSend** ao final

### 💫 `ConfigurarZSH.sh` – ZSH Turbo com Tema Spaceship

Automatiza:

- Instalação do **ZSH**
- Instalação do **Oh My Zsh**
- Ativação do tema **Spaceship** 🛸
- Instalação de plugins de produtividade como `zsh-autosuggestions` e `zsh-syntax-highlighting`

---

## 🛠️ Como usar? | How to use

### 1️⃣ Clone o repositório:

```bash
git clone https://github.com/fhilippe-gabriel/UbuntuPowerUp.git
cd UbuntuPowerUp
```

### 2️⃣ Execute os scripts:

```bash
chmod +x *.sh

./install.sh           # APT + Snap + Aliases + ZSH
./flatpak.sh           # Flatpak apps + Spinner
./ConfigurarZSH.sh     # Tema ZSH + plugins
```

---

## 💡 Por que usar? | Why use it?

✅ Instalação com visual agradável  
✅ Scripts organizados e reutilizáveis  
✅ Perfeito para devs, editores, entusiastas de produtividade  
✅ Ideal para pós-instalação de Ubuntu e derivados

---

## 🤝 Contribua com a comunidade!

Contribuições são muito bem-vindas!  
Você pode:

- Abrir uma [issue](https://github.com/fhilippe-gabriel/UbuntuPowerUp/issues)
- Enviar um Pull Request ✨
- Sugerir novos apps, temas ou melhorias 🧠

---

## 📄 Licença

MIT License © [Fhilippe Gabriel](https://github.com/fhilippe-gabriel)

---

> 💬 _Let your Ubuntu be as productive as you are._

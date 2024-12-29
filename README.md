# Configurar Ubuntu Workspace - Shell

Este repositório contém uma coleção de scripts para automatizar a instalação e configuração de softwares em sistemas baseados no Ubuntu. Os scripts cobrem a instalação de pacotes via Snap, Flatpak e APT, além de configurar o ambiente ZSH com Oh My Zsh e temas personalizados.

## Estrutura do Repositório

- **assets**
  - **.bash_aliases**: Arquivo de aliases personalizados para o terminal.
  - **.zshrc**: Arquivo de configuração do ZSH.
- **ConfigrarZSH.sh**: Script para configurar o ZSH com Oh My Zsh e o tema Spaceship.
- **flatpak.sh**: Script para instalar aplicativos via Flatpak.
- **install.sh**: Script principal para instalar pacotes via Snap e APT, além de configurar aliases e o ZSH.
- **README.md**: Este arquivo.

## Scripts

### install.sh

Este script realiza a instalação de diversos pacotes utilizando Snap e APT, além de configurar aliases e o ZSH.

#### Pacotes Instalados via Snap

- Adobe Acrobat Reader
- Beekeeper Studio
- Bitwarden

#### Pacotes Instalados via APT

- btop
- Visual Studio Code
- VSCodium
- curl
- batcat
- eza
- git
- GitHub CLI
- neofetch
- nodejs
- npm
- Spotify
- flatpak
- gnome-software-plugin-flatpak

#### Configurações Adicionais

- Copia o arquivo **.bash_aliases** para o diretório home do usuário.
- Configura o ZSH com Oh My Zsh.

#### Execução

```sh
.\install.sh
```

### flatpak.sh

Este script instala diversos aplicativos utilizando o Flatpak.

#### Aplicativos Instalados via Flatpak

- Telegram
- Audacity
- Extension Manager
- Soundux
- System Monitor
- Master PDF Editor
- GIMP
- PulseAudio Volume Control
- Upscayl

#### Execução

```sh
.\flatpak.sh
```

### ConfigrarZSH.sh

Este script configura o ZSH com Oh My Zsh e o tema Spaceship, além de instalar plugins adicionais.

#### Execução

```sh
.\ConfigrarZSH.sh
```

## Arquivos de Configuração

### .bash_aliases

Contém aliases personalizados para facilitar o uso do terminal.

### .zshrc

Arquivo de configuração do ZSH com o tema Spaceship e plugins adicionais.

## Como Executar

1.  Clone o repositório:

            ```
            git clone <URL_DO_REPOSITORIO>
            cd script-install-ubuntu
            ```

    ou

    ```
    gh repo clone fhilippe-gabriel/script-install-ubuntu
    ```

2.  Execute os scripts conforme necessário:
    `sh
sudo bash install.sh
sudo bash flatpak.sh
bash ConfigrarZSH.sh
`

## Contribuição

Sinta-se à vontade para abrir issues e pull requests para melhorias e correções.

## Licença

Este projeto está licenciado sob a MIT License.

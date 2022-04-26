sudo apt-get update

echo 'installing wget'
sudo apt-get install wget -y

echo 'installing curl'
sudo apt-get install curl -y

echo 'installing vim'
sudo apt-get install vim -y

echo 'installing htop'
sudo apt-get install htop -y

echo 'installing git'
sudo apt-get install git -y

# git user configuration
echo 'what name do you want to use in git user.name?'
read git_config_user_name
git config --global user.name "$git_config_user_name"

echo 'what name do you want to use in git user.email?'
read git_config_user_email
git config --global user.email $git_config_user_email

echo 'installing dbeaver'
sudo wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo apt install ./dbeaver-ce_latest_amd64.deb
rm -rf ./dbeaver-ce_latest_amd64.deb

echo 'installing docker'
sudo apt install docker.io -y
sudo usermod -aG docker $USER

echo 'installing google chrome'
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install ./google-chrome-stable_current_amd64.deb
rm -rf ./google-chrome-stable_current_amd64.deb

echo 'installing hyper terminal'
wget hyper_latest.deb https://releases.hyper.is/download/deb
sudo apt install ./hyper_latest.deb
hyper install hyper-dracula
rm -rf ./hyper_latest.deb

echo 'installing JetBrainsMono font'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

echo 'installing vscode'
sudo apt-get install software-properties-common apt-transport-https -y
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" -y
sudo apt-get install code -y

echo 'installing vscode extensions'
code --install-extension rocketseat.theme-omni
code --install-extension dracula-theme.theme-dracula
code --install-extension pkief.material-icon-theme
code --install-extension editorconfig.editorconfig
code --install-extension formulahendry.auto-rename-tag
code --install-extension naumovs.color-highlight
code --install-extension alexkrechik.cucumberautocomplete
code --install-extension xabikos.javascriptsnippets
code --install-extension ms-vscode.vscode-typescript-next
code --install-extension andys8.jest-snippets
code --install-extension dbaeumer.vscode-eslint
code --install-extension esbenp.prettier-vscode
code --install-extension prisma.prisma
code --install-extension prisma.prisma-insider
code --install-extension jpoissonnier.vscode-styled-components
code --install-extension mikestead.dotenv
code --install-extension natqe.reload

echo 'installing postman'
sudo snap install postman

echo 'installing spotify'
sudo snap install spotify

echo 'installing discord'
sudo snap install discord

echo 'installing zsh'
sudo apt-get install zsh -y

echo 'installing oh-my-zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" -y

echo 'installing nvm'
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.zshrc
nvm install --lts

echo 'generating ssh-key'
ssh-keygen -b 4096 -t rsa -C $git_config_user_email
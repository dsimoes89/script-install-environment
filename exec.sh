sudo apt-get update

echo 'installing wget'
sudo apt-install wget -y

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

echo 'installing nvm'
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.zshrc
nvm install --lts

echo 'installing zsh'
sudo apt-get install zsh -y
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh

echo 'installing oh-my-zsh'
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo 'installing docker'
sudo apt-get install ca-certificates gnupg lsb-release
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get install docker-ce docker-ce-cli containerd.io

echo 'installing google chrome'
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get install google-chrome-stable

echo 'installing hyper terminal'
wget -O hyper_latest.deb https://releases.hyper.is/download/deb
sudo apt-get install ./Downloads/hyper_latest.deb
hyper install hyper-dracula

echo 'installing JetBrainsMono font'
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/JetBrains/JetBrainsMono/master/install_manual.sh)"

echo 'installing vscode'
sudo apt-get install software-properties-common apt-transport-https
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
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

echo 'installing dbeaver'
wget -O - https://dbeaver.io/debs/dbeaver.gpg.key | sudo apt-key add -
echo "deb https://dbeaver.io/debs/dbeaver-ce /" | sudo tee /etc/apt/sources.list.d/dbeaver.list
sudo apt-get install dbeaver-ce -y

echo 'installing postman'
sudo snap install postman

echo 'installing spotify'
curl -sS https://download.spotify.com/debian/pubkey_5E3C45D7B312C643.gpg | sudo apt-key add -
echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list
sudo apt-get install spotify-client -y

echo 'installing discord'
sudo snap install discord

echo 'generating ssh-key'
ssh-keygen -b 4096 -t rsa -C $git_config_user_email
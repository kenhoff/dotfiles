# todo:
# - check to see if aws is already installed

sudo apt update

# install aws
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "/tmp/awscliv2.zip"
unzip /tmp/awscliv2.zip
sudo /tmp/aws/install

sudo apt install software-properties-common
sudo add-apt-repository ppa:appimagelauncher-team/stable

sudo apt install neovim
sudo apt install tmux
sudo apt install tmuxinator
sudo apt install thefuck
sudo apt install exa
sudo apt install nodejs
sudo apt install npm
sudo apt install appimagelauncher
sudo apt install fzf


# install nodenv
# with npx/npm
npx @nodenv/nodenv-installer

sudo apt install fish
echo /usr/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish


# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew install node
brew install neovim
brew install fzf
brew install tmux
brew install tmuxinator
brew install fish
brew install ripgrep
brew install thefuck
brew install jesseduffield/lazygit/lazygit
brew install exa
brew install azure-cli

# connect fish the right way
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

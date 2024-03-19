

# todo - check if brew exists. if not, download and install, including "next steps" bits
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# todo - bit of a race condition here. this is the fish version. zsh wants to install its own version of this, but we need brew installed before we can install fish.
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/ken/.profile
eval "$(/opt/homebrew/bin/brew shellenv)"

brew install node
brew install nodenv
brew install neovim
brew install fzf
brew install tmux
brew install tmuxinator
brew install fish
brew install ripgrep
brew install thefuck
brew install exa
brew install azure-cli

# connect fish the right way
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/local/bin/fish

# todo - install magnet, notion, brave via cask
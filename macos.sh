# todo - check if brew exists. if not, download and install, including "next steps" bits
# install homebrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo >>/Users/ken.hoff/.config/fish/config.fish
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >>/Users/ken.hoff/.config/fish/config.fish
eval "$(/opt/homebrew/bin/brew shellenv)"

# todo - bit of a race condition here. this is the fish version. zsh wants to install its own version of this, but we need brew installed before we can install fish.
# (echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/ken.hoff/.profile
# eval "$(/opt/homebrew/bin/brew shellenv)"

# brew install node # node should be installed by nodenv
brew install nodenv
brew install neovim
brew install fzf
brew install tmux
brew install tmuxinator
brew install fish
brew install ripgrep
brew install thefuck
brew install eza
brew install --cask dbeaver-community

# connect fish the right way
echo /opt/homebrew/bin/fish | sudo tee -a /etc/shells
chsh -s /opt/homebrew/bin/fish

# todo - install magnet, notion, brave via cask

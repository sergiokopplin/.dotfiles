user=$(whoami)

# brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# zinit
sh -c "$(curl -fsSL https://raw.githubusercontent.com/zdharma/zinit/master/doc/install.sh)"

# nvm
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash

brew tap homebrew/cask-versions
brew tap homebrew/cask-fonts   
brew tap homebrew/cask-drivers

brew install zsh
brew install github/gh/gh

brew cask install google-chrome
brew cask install firefox
brew cask install visual-studio-code-insiders
brew cask install alfred
brew cask install spotify
brew cask install iterm2
brew cask install slack
brew cask install postman
brew cask install insomnia
brew cask install rectangle
brew cask install whatsapp
brew cask install notion
brew cask install github
brew cask install font-fira-code
brew cask install android-studio
brew cask install dozer
brew cask install react-native-debugger
brew cask install reactotron
brew cask install flipper
brew cask install steam
brew cask install discord
brew cask install xbox360-controller-driver-unofficial
brew install homebrew/cask/java
brew install watchman

brew cask install docker
brew install docker-compose

# dracula iterm
git clone https://github.com/dracula/iterm.git /Users/$user/dracula-iterm

# xcode
# manually

# loft
brew cask install google-drive-file-stream
brew cask install mysqlworkbench

# brew install asdf
# brew install \
#   coreutils automake autoconf openssl \
#   libyaml readline libxslt libtool asd \
#   unzip curl
 
# echo -e "\n. $HOME/.asdf/asdf.sh" >> ~/.zshrc
 
# asdf --version
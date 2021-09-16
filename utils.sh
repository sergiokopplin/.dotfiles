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
brew install homebrew/cask/java
brew install watchman
brew install docker-compose

brew cask install google-chrome
brew cask install visual-studio-code
brew cask install alfred
brew cask install spotify
brew cask install iterm2
brew cask install slack
brew cask install postman
brew cask install rectangle
brew cask install whatsapp
brew cask install font-fira-code
brew cask install dozer
brew cask install steam
brew cask install docker
brew cask install mysqlworkbench
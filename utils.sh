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

brew install zsh

function checkCask {
  if brew cask list --versions google-chrome > /dev/null; then
    echo "$1 already installed"
  else
    brew cask install $1
  fi
}

checkCask google-chrome
checkCask visual-studio-code-insiders
checkCask alfred
checkCask spotify
checkCask iterm2
checkCask slack
checkCask postman
checkCask rectangle
checkCask whatsapp
checkCask notion
checkCask github
checkCask font-fira-code
checkCask android-studio

# dracula iterm
git clone https://github.com/dracula/iterm.git /Users/$user/dracula-iterm

# xcode
# manually
if test ! $(which brew); then
  curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh | bash

  echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> $HOME/.zprofile
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew update
# install brew services https://github.com/Homebrew/homebrew-services
brew services

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle --file ./Brewfile

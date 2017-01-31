#!/bin/sh
# Install Xcode!
echo "Install all AppStore Apps at first!"
read -p "This script is for installing essential stuff via brew..
Press any key to continue." -n1 -s
echo  '\n'

# Clear brew if you have brew installed
brew untap caskroom/cask
brew uninstall --force brew-cask
brew update; brew cleanup; brew cask cleanup

# Install brew
echo Installing brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew tap homebrew/science

# Brew
brew install macvim
brew install wget
brew install node
brew install yarn
sudo npm install npm -g

##
echo WEB DEVELOPMENT
##
sudo npm -g install babel-cli
sudo npm -g install karma-cli
sudo npm -g install grunt-cli
sudo npm -g install gulp
sudo npm -g install bower

# Install brew-cask
brew tap caskroom/cask

##
echo Brew-Cask-Apps
##
brew cask install --appdir="~/Applications" alfred
brew cask install --appdir="~/Applications" visual-studio-code
brew cask install --appdir="~/Applications" postman
brew cask install --appdir="~/Applications" dropbox
brew cask install --appdir="~/Applications" google-chrome
brew cask install --appdir="~/Applications" evernote
brew cask install --appdir="~/Applications" vlc
brew cask install --appdir="~/Applications" java
brew cask install --appdir="~/Applications" skype
brew cask install --appdir="~/Applications" spotify
brew cask install --appdir="~/Applications" flux
brew cask install --appdir="~/Applications" atom
brew cask install --appdir="~/Applications" git
brew cask install --appdir="~/Applications" slack

##
echo ATOM PLUGINS
##
apm install autocomplete-html-entities
apm install color-picker
apm install css-comb
apm install file-icons
apm install git-plus
apm install highlight-selected
apm install javascript-snippets
apm install linter
apm install linter-eslint
apm install merge-conflicts
apm install minimap
apm install platformio-ide-terminal
apm install react

echo Linking to alfred
brew cask alfred link

echo Display all installed by brew
brew list

echo Display all installed by brew-cask
brew cask list

echo Cleanup brew!

# cleanup
brew cleanup --force
rm -f -r /Library/Caches/Homebrew/*

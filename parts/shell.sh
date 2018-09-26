#! /bin/bash

# Make your shell environment into something that
# you can tell your mom about on the next family dinner.

brew cask install iterm2
brew install tmux

if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

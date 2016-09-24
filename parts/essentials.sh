#!/bin/bash

# Install homebrew
if ! hash brew 2>/dev/null; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi
# Tap that brew cask ass.
brew tap caskroom/cask

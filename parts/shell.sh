#! /bin/bash

# Make your shell environment into something that
# you can tell your mom about on the next family dinner.

brew cask install iterm2

# Oh my zsh is what you have been dreaming about
# in the shower while awkwardly touching yourself.
# Let's make that secret dream a reality.
if [ ! -d ~/.oh-my-zsh ]; then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
fi

# You probably want my dotfiles hanging around
# in your user folder. For protection you know.
if [ ! -f ~/.my-dotfiles ]; then
    read -p "Do you want to feel safe with my dotfiles?? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
	git clone https://github.com/fabsor/dotfiles.git
	cp dotfiles/.* ~/.
	touch ~/.my-dotfiles
	rm -rf dotfiles
    fi
fi

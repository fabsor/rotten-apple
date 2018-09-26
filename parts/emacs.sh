#! /bin/bash
# You want emacs. You need emacs. Emacs doesn't need you.
# You also need a good emacs conf.

# Friends don't let friends run emacs in a terminal.
# Emacs deserves it's own window. and then you run a terminal
# in emacs. Get on the emacs bus.
#brew cask install emacs

if [ ! -f $HOME/.emacs.d/init.el ]; then
    git clone https://github.com/fabsor/emacs-reborn.git $HOME/.emacs.d
fi

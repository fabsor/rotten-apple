#! /bin/bash
# You want emacs. You need emacs. Emacs doesn't need you.
# You also need a good emacs conf.

# Friends don't let friends run emacs in a terminal.
# Emacs deserves it's own window. and then you run a terminal
# in emacs. Get on the emacs bus.
brew cask install emacs

if [ ! -f .emacs.d/personal/personal.el ]; then
    curl -L http://git.io/DOC7Sg | sh
fi

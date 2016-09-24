#! /bin/bash

parts="essentials shell node python php leisure emacs"

for part in $parts; do
    read -p "Do you want to install $part? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
        ./parts/$part.sh
    fi
done

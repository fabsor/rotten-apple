#! /bin/bash

PROJECT_DIR="$HOME/projects"

# Trust no one. The php70 package is currently broken.
brew install --build-from-source homebrew/php/php70

# The other packages should be fine.
brew install mariadb nginx  homebrew/php/php70-xdebug

cp files/nginx.conf /usr/local/etc/nginx/nginx.conf
cp files/ext-xdebug.ini /usr/local/etc/php/7.0/conf.d/ext-xdebug.ini

sed -i '' 's|__PROJECTDIR__|'$PROJECT_DIR'|g' "/usr/local/etc/nginx/nginx.conf"

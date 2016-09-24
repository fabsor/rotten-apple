#! /bin/bash

PROJECT_DIR="$HOME/projects"

brew install mariadb nginx homebrew/php/php70 homebrew/php/php70-xdebug

cp files/nginx.conf /usr/local/etc/nginx/nginx.conf
cp files/ext-xdebug.ini /usr/local/etc/php/7.0/conf.d/ext-xdebug.ini

sed -i '' 's|__PROJECTDIR__|'$PROJECT_DIR'|g' "/usr/local/etc/nginx/nginx.conf"

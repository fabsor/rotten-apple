#!/bin/bash

# Install tiny proxy

brew install tinyproxy

# Open it all up to everyone
sed -i '' 's|Allow 127.0.0.1||g' "/usr/local/etc/tinyproxy.conf"

#!/bin/bash
##############################################################################################
##
## feather-xmr-wallet-getter bash script
##
## Author: Flora Mae Wolfe
## URL: https://github.com/FloraMaeWolfe
##
##############################################################################################

# Get the filename part of the url
file=$(curl -s "https://featherwallet.org/download/" | grep 'linux-appimage/' | grep '.AppImage' | head -n1 | cut -d\" -f2- | rev | cut -d\" -f2- | rev)

# Download it
wget "https://featherwallet.org$file"

# Make it able to run
chmod +x *.AppImage

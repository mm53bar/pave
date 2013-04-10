#!/bin/sh
#                                                                  
#                                                                  
# _________   _...._            .----.     .----.   __.....__      
# \        |.'      '-.          \    \   /    /.-''         '.    
#  \        .'```'.    '.         '   '. /'   //     .-''"'-.  `.  
#   \      |       \     \   __   |    |'    //     /________\   \ 
#    |     |        |    |.:--.'. |    ||    ||                  | 
#    |      \      /    ./ |   \ |'.   `'   .'\    .-------------' 
#    |     |\`'-.-'   .' `" __ | | \        /  \    '-.____...---. 
#    |     | '-....-'`    .'.''| |  \      /    `.             .'  
#   .'     '.            / /   | |_  '----'       `''-...... -'    
# '-----------'          \ \._,\ '/                                
#                         `--'  `"                                 
# 
#
#     This is the installation script for Pave.
#     See the source: https://github.com/mm53bar/pave/
#
#     Install Pave by running this command:
#     curl https://raw.github.com/mm53bar/pave/master/install.sh | sh

# Set up the environment

      set -e

# Create the bin folder if it doesn't already exist

      mkdir -p bin

# Download the pave script

      curl -s -L https://raw.github.com/mm53bar/pave/master/bin/pave -o bin/pave
      
# Downoad support files

      curl -s -L https://raw.github.com/mm53bar/pave/master/.env.sample >> .env.sample

# Set the permissions for the scripts

      chmod +x bin/pave

# All done

      echo 'Installed!'
      echo      
      echo 'Be sure to update .env.sample. Then copy it to .env.production'

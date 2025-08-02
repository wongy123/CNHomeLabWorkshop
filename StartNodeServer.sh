#!/bin/bash

# Load nvm
export NVM_DIR="/home/$1/.nvm"
source "$NVM_DIR/nvm.sh"

# Use default Node version
node /home/$1/StudyBuddy/server/server.js


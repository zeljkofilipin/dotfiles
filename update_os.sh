#!/bin/bash

# update Homebrew on macOS
update_macos() {
    echo "Updating Homebrew on macOS..."
    brew update
    brew upgrade
    brew cleanup
    echo "Homebrew update completed."
}

# update APT and Snap on Ubuntu
update_ubuntu() {
    echo "Updating APT packages on Ubuntu..."
    sudo apt update && sudo apt upgrade -y
    sudo apt autoremove -y
    echo "APT update completed."

    echo "Updating Snap packages..."
    sudo snap refresh
    echo "Snap update completed."
}

# detect if macOS or Linux (assuming Ubuntu)
if [[ "$OSTYPE" == "darwin"* ]]; then
    update_macos
elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    update_ubuntu
else
    echo "Unsupported OS. This script supports only macOS and Ubuntu."
fi

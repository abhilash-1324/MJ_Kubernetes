#!/bin/bash

# Check if Vagrant is installed
if ! command -v vagrant &> /dev/null; then
    echo "Vagrant is not installed. Installing..."
    # Install Vagrant
    sudo apt update
    sudo apt install vagrant -y
fi

# Check if VirtualBox is installed
if ! command -v virtualbox &> /dev/null; then
    echo "VirtualBox is not installed. Installing..."
    # Install VirtualBox
    sudo apt update
    sudo apt install virtualbox -y
fi

# Start the Vagrant virtual machines
vagrant up


#!/bin/bash

set -e  # Exit script on first error

# Ensure system is updated
sudo apt-get update 

# Add universe repository (in case it's missing)
sudo add-apt-repository universe -y
sudo apt-get update 

# Install unzip without specifying a version
sudo apt-get install -y unzip 

# Install Helm
curl -fsSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash


# Install dependencies
sudo apt-get install -y wget apt-transport-https software-properties-common

# Add Microsoft repository for PowerShell
wget -q https://packages.microsoft.com/config/ubuntu/$(lsb_release -rs)/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

# Update package lists
sudo apt-get update -y

# Install PowerShell
DEBIAN_FRONTEND=noninteractive sudo apt-get install -y powershell

# Verify Installation
pwsh --version

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
sudo apt-get install -y ca-certificates curl apt-transport-https lsb-release gnupg

# Add Microsoft repository
curl -sL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /usr/share/keyrings/microsoft.gpg
echo "deb [signed-by=/usr/share/keyrings/microsoft.gpg] https://packages.microsoft.com/repos/azure-cli/ $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/azure-cli.list

# Update package list and install Azure CLI
sudo apt-get update && sudo apt-get install -y azure-cli

# Verify installation
az --version

sudo apt-get install -y powershell

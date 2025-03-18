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

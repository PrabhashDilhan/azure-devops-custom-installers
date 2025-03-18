#!/bin/bash
# Install Helm
curl -fsSL https://raw.githubusercontent.com/helm/helm/main/scripts/get-helm-3 | bash

# Update package lists and install unzip
sudo apt-get update && sudo apt-get install -y unzip
